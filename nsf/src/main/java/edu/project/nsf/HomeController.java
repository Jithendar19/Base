package edu.project.nsf;

import java.io.BufferedOutputStream;
import java.io.File;

import java.io.FileOutputStream;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import ThesisProject.RegularExp;
import edu.project.suffixSearch.NSFRNA;
import edu.project.suffixSearch.RNAVariables;
import edu.project.suffixSearch.SuffixFileProcess;
import edu.project.suffixSearch.SuffixIntArray;

import org.springframework.stereotype.Controller;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	RegularExp r= new RegularExp();
	String dataBase= r.openFile("Input RNA.txt");
	String path = "/Users/50007728/GitHub/RNA/Base/nsf/src/main/resources/a/";

	// ************************************************************************************************************************//
	//  object of Pojo class RnaVariables is intialized and passed as a parameter to the constructor of NSFRNA object creation.//
	// ************************************************************************************************************************//
	
	RNAVariables var= new RNAVariables();
	NSFRNA a = new NSFRNA(var);

	// **********************************************************************//
	// Loading the array with filename, nucleotide and structure into memory.//
	// **********************************************************************//
	ReadCSV readArray = new ReadCSV();
	String[][] varna = readArray.run();

	// *****************************************************************************//
	// servet returns the home page when the /nsf request is made to the controller.
	// *****************************************************************************//
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "home";
	}
	// ************************************************************************************************************//
	//once user enters the pattern file after file validation user is redirected to verna with list of matches
	// ************************************************************************************************************//
	@RequestMapping(value = "/verna", method = RequestMethod.POST)
	public String verna(Locale locale, Model model, @RequestParam("name") String name,
			@RequestParam("file") MultipartFile file) {

		
		//This list hold the  info like rnaName, nucleotide, starting indices of the pattern in the RNA  with each matching patterns.
		ArrayList<ArrayList<String>> structureList = new ArrayList<ArrayList<String>>();
		ArrayList<String> structure = new ArrayList<String>();
		ArrayList<String> fileName = new ArrayList<String>();
		ArrayList<String> nucleotide = new ArrayList<String>();
		ArrayList<Integer> indicesForPattern = new ArrayList<Integer>();

		////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		// ****************	If the file is empty  then user is returned to upload page with error msg.**************************
		////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		System.out.println("1............................");
		if (!file.isEmpty()) {
			try {
				System.out.println("1.1............................");
				byte[] bytes = file.getBytes();
				BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(new File(path + name)));
				stream.write(bytes);
				stream.close();

				System.out.println("2............................");
				// var.setNucleotide(0);
				var.setSearchFileName(path + name);

				
				// ***********************************//
				// Converting SearchRNA to new format //
				// ***********************************//

				System.out.println("3............................");
				
				SuffixFileProcess SearchArray = new SuffixFileProcess();
				SearchArray.OpenInputFile(var.getSearchFileName());
				var.setSearchRNA(SearchArray.ReadFile(var.getNucleotide(), var.getSearchRNA(), 1));
				var.setNoOfSearchPatterns(SearchArray.BuildIntegerArray(var.getSearchRNA()));
				System.out.println("4............................");
				
				
				// ***********************************//
				// Reading the length of SearchRNA    //
				// ***********************************//
				
				for (int x = 0; x < var.getNoOfSearchPatterns(); x++) {
					var.setLengthOfEachRNA(var.getLengthOfEachRNA(x));
				}
				
				
				
				// ************************
				// Searching the RNA
				// ************************
				System.out.println("Searching Pattern in the database...." + var.getSearchFileName());
				SuffixIntArray searchOnly = new SuffixIntArray();
				for (int k = 0; k < var.getNoOfSearchPatterns(); k++) {
					
					// long startTime = System.nanoTime();

					if (var.getNucleotide() == 1)
						var.setOutputString(searchOnly.search(var.getSearchRNA(), var.getLengthOfEachRNA(k), k,
								var.getSuffixNucleotide(), var.getInputRNA(),
								var.getSuffixArrayIndexIteratorNucleotide()));
					if (var.getNucleotide() == 0)
						var.setOutputString(searchOnly.search(var.getSearchRNA(), var.getLengthOfEachRNA(k), k,
								var.getSuffixStructure(), var.getInputRNA(),
								var.getSuffixArrayIndexIteratorStructure()));

					// long endTime = System.nanoTime();
					// long duration = (endTime - startTime);
					// System.out.print(duration);
					// System.out.print("OutputString : "
					// +var.getOutputString());
				}

				////////////////////////////////////////////////////////////////////////////////////////////////
				// *******************************************************************************************//
				// Once the search is complete an output string is split and values are assigned to the array.//
				// *******************************************************************************************//
				////////////////////////////////////////////////////////////////////////////////////////////////

				String output = new String();

				System.out.println("database loaded into memory. starting timer.....");

				long startTime = System.nanoTime();

				System.out.println("searching for pattern");
				output = var.getOutputString();

				System.out.println("pattern searched completed stopping timer.");
				long endTime = System.nanoTime();
				long duration = (endTime - startTime);
				long elapsedTime = (duration);
				System.out.println("spliting the search result");

				System.out.println(output);
				String[] parts = output.split("#");

				int noOfMatches = parts.length - 1;

				System.out.println("the loop begins now: " + noOfMatches / 2);

				for (int i = 0; i < noOfMatches; i++) {

					if (i % 2 == 0) {

						structure.add(varna[(Integer.parseInt(parts[i]))][2]);

						// structure.add("..........................................................");
						// structure.add("(((((.(((((....))))).(((((.....))))).(((((.....))))).)))))");
						// structure.add(".......((((((((......)))).((((((((......))))))))..))))....");

						fileName.add(varna[(Integer.parseInt(parts[i]))][0]);

						// fileName.add("RNA2");
						// fileName.add("RNA3");
						// fileName.add("RNA4");

						nucleotide.add(varna[(Integer.parseInt(parts[i]))][1]);

					}

					else {
						indicesForPattern.add(Integer.parseInt(parts[i]));
						// System.out.println((Integer.parseInt(parts[i])));
					}

				}

				System.out.println("loop terminated  adding model attributes .....");

				model.addAttribute("msgs", "Finding matches took: " + elapsedTime + " nanoseconds");
				model.addAttribute("noOfMatches", parts.length);
				model.addAttribute("RegularExpPojo", new RegularExpPojo());

				System.out.println("Finding matches took: " + elapsedTime + " nanoseconds");

				structureList.add(0, structure);
				structureList.add(1, fileName);
				model.addAttribute("nucleotide", nucleotide);
				model.addAttribute("defaultResult", structureList);
				model.addAttribute("HighLight", indicesForPattern);
				model.addAttribute("patternLength", parts[parts.length]);
				
				return "verna";

			} catch (Exception e) {
				model.addAttribute("msg", "You failed to upload " + name + " => " + e.getMessage());
				return "verna";
			}

		} else {
			
			model.addAttribute("msg", "You failed to upload " + name + " because the file was empty.");
			return "upload";
		}
	}

	@RequestMapping(value = "/upload", method = RequestMethod.GET)
	public String provideUploadInfo(Model model) {

		return "upload";
	}

	@RequestMapping(value = "/contact", method = RequestMethod.GET)
	public String contact(Model model) {

		return "contact";
	}
	
	@RequestMapping(value = "/about", method = RequestMethod.GET)
	public String about(Model model) {

		return "about";
	}
	
	@RequestMapping(value = "/team", method = RequestMethod.GET)
	public String team(Model model) {

		return "location";
	}

	@RequestMapping(value = "/uploaded", method = RequestMethod.POST)
	public String handleFileUpload(@ModelAttribute RegularExpPojo pojo, Model model, @RequestParam("name") String name,
			@RequestParam("file") MultipartFile file) {

		ReadFile test = new ReadFile();

		if (!file.isEmpty()) {
			try {
				byte[] bytes = file.getBytes();
				BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(new File(name)));
				stream.write(bytes);
				stream.close();

				model.addAttribute("text", dataBase);
				model.addAttribute("msg", name);
				model.addAttribute("RegularExpPojo", new RegularExpPojo());

				return "RegularExp";

			} catch (Exception e) {
				model.addAttribute("msg", "You failed to upload " + name + " => " + e.getMessage());
				model.addAttribute("RegularExpPojo", new RegularExpPojo());
				model.addAttribute("text", test.read(name));
				return "upload";
			}
		} else {
			model.addAttribute("msg", "You failed to upload " + name + " because the file was empty.");
			return "upload";
		}
	}

	@RequestMapping(value = "/search", method = RequestMethod.POST)
	public String regularExpSearch(@ModelAttribute RegularExpPojo pojo, Locale locale, Model model,
			@RequestParam("pattern") String pattern, @RequestParam("foundOnFile") boolean foundOnFile,
			@RequestParam("path") String filename) {

		// RegularExp r = new RegularExp();
		String output = new String();

		System.out.println("Reading database ..... ");
		StringBuffer sb = new StringBuffer(dataBase);

		if (pattern == "") {
			model.addAttribute("text", sb);
			model.addAttribute("msgs", "Empty search not a valid search!");
			model.addAttribute("msg", filename);
			model.addAttribute("RegularExpPojo", new RegularExpPojo());
			return "RegularExp";
		}

		System.out.println("database loaded into memory. starting timer.....");
		long startTime = System.nanoTime();
		System.out.println("searching for pattern");

		output = r.searchButtonActionPerformed(pattern);
		System.out.println("pattern searched completed stopping timer.");
		long endTime = System.nanoTime();
		long duration = (endTime - startTime);
		long elapsedTime = (duration);
		System.out.println("spliting the search result");
		String[] parts = output.split("#");
		int k = Integer.parseInt(parts[parts.length - 3]);

		System.out.println("the loop begins now: " + k);
		int count = 0;

		for (int i = 0; i < (k * 2); i++) {

			// System.out.println(parts[i]);
			if (i % 2 == 0) {
				sb.insert(Integer.parseInt(parts[i]) + count, "<font size=\"3\" color=\"red\">");
				count = count + 27;
			} else {
				sb.insert(Integer.parseInt(parts[i]) + count, "</font>");
				count = count + 7;
			}
		}

		System.out.println("loop terminated  adding model attributes .....");
		if (foundOnFile)
			model.addAttribute("status", r.SaveList());
		// System.out.println(sb);
		model.addAttribute("text", sb);
		model.addAttribute("msgs", "Finding matches took: " + elapsedTime + " nanoseconds");
		model.addAttribute("msg", filename);
		model.addAttribute("noOfMatches", k);
		model.addAttribute("pattern", pattern);
		model.addAttribute("RegularExpPojo", new RegularExpPojo());

		System.out.println("Finding matches took: " + elapsedTime + " nanoseconds");

		return "RegularExp";
	}

	@RequestMapping(value = "/addRNA", method = RequestMethod.POST)
	public String handleRNAUpload(@ModelAttribute RegularExpPojo pojo, Model model, @RequestParam("name") String name,
			@RequestParam("file") MultipartFile file) {

		if (!file.isEmpty()) {
			try {
				byte[] bytes = file.getBytes();
				BufferedOutputStream stream = new BufferedOutputStream(
						new FileOutputStream(new File("/Users/50007728/GitHub/RNA/Base/nsf/src/main/resources/a/" + name)));
				stream.write(bytes);
				stream.close();

				model.addAttribute("msg", "The submission has been added as " + name);
				model.addAttribute("RegularExpPojo", new RegularExpPojo());

				return "searchRNA";

			} catch (Exception e) {
				model.addAttribute("msg", "You failed to upload " + name + " => " + e.getMessage());
				model.addAttribute("RegularExpPojo", new RegularExpPojo());

				return "searchRNA";
			}
		} else {
			model.addAttribute("msg", "You failed to upload " + name + " because the file was empty.");
			return "uploadfile";
		}
	}

	@RequestMapping(value = "/RNASearch", method = RequestMethod.POST)
	public String SuffixSearch(@ModelAttribute RegularExpPojo pojo, Locale locale, Model model,
			@RequestParam("path") String filename) {

		return "RegularExp";
	}

}
