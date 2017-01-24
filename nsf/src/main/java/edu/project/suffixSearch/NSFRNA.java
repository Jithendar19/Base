/**
 * Compiled using NetBeans IDE 8.1
 * @author Eric Fry and Jithendar Anandan
 * NSA Project
 * Texas A&M University - Commerce
 * Main function
**/
package edu.project.suffixSearch;

public class NSFRNA {

	public NSFRNA(RNAVariables var) {

		// Set Concatenated file name and Search file name
		var.setConcatenatedFileName("/opt/NSF_Data_Files/NewFormatConcatenated.txt");
		// var.setSearchFileName(dataFilesPath + "searchASE.txt");

		// Reading InputRNA
		System.out.println("Reading Input RNA Nucleotide....  ");
		SuffixFileProcess NewFormatarray = new SuffixFileProcess();
		NewFormatarray.OpenInputFile(var.getConcatenatedFileName());
		var.setInputRNANucleotide(NewFormatarray.ReadFile(1, var.getInputRNANucleotide(), 0));
		var.setFileNumber(NewFormatarray.BuildIntegerArray(var.getInputRNANucleotide()));
		NewFormatarray.CloseInputFile();

		System.out.println("Reading Input RNA Structure ....  ");
		SuffixFileProcess NewFormatStructure = new SuffixFileProcess();
		NewFormatStructure.OpenInputFile(var.getConcatenatedFileName());
		var.setInputRNAStructure(NewFormatStructure.ReadFile(0, var.getInputRNAStructure(), 0));
		var.setFileNumber(NewFormatStructure.BuildIntegerArray(var.getInputRNAStructure()));
		NewFormatStructure.CloseInputFile();

		// Display Input RNA
		// var.DisplayInputRNA();
		// var.DisplayInputRNAStructure();

		// Creating Suffix Array Nucleotide
		System.out.println("Creating Suffix Array Nucleotide ....  ");
		SuffixIntArray createSuffixNucleotide = new SuffixIntArray();
		var.setSuffixNucleotide(createSuffixNucleotide.createSuffixArray(var.getInputRNANucleotide(), var.getFileNumber(), var.getSuffixNucleotide(), 1)); 
        var.setSuffixArrayIndexIteratorNucleotide(createSuffixNucleotide.getSuffixArrayIndexIterator());
        
		// Creating Suffix Array Structure
		System.out.println("Creating Suffix Array Structure ....  ");
		SuffixIntArray createSuffixStructure = new SuffixIntArray();
		var.setSuffixStructure(createSuffixStructure.createSuffixArray(var.getInputRNAStructure(), var.getFileNumber(), var.getSuffixStructure(), 0));
        var.setSuffixArrayIndexIteratorStructure(createSuffixStructure.getSuffixArrayIndexIterator());     
      
		// Reading Suffix Array Nucleotide
		// System.out.println("Reading Suffix Array from file.... ");
		// CreateSuffixFile readSuffixNucleotide = new CreateSuffixFile();
		// readSuffixNucleotide.OpenFile(dataFilesPath +
		// "SuffixFileNucleotide.txt");
		// var.setSuffixNucleotide(readSuffixNucleotide.ReadFile(var.getSuffixNucleotide()));
		// var.setSuffixArrayIndexIteratorNucleotide(readSuffixNucleotide.SuffixArrayIndexIterator());
		// readSuffixNucleotide.CloseFile();

		// Reading Suffix Array Structure
		// CreateSuffixFile readSuffixStructure = new CreateSuffixFile();
		// readSuffixStructure.OpenFile(dataFilesPath +
		// "SuffixFileStructure.txt");
		// var.setSuffixStructure(readSuffixStructure.ReadFile(var.getSuffixStructure()));
		// var.setSuffixArrayIndexIteratorStructure(readSuffixStructure.SuffixArrayIndexIterator());
		// readSuffixStructure.CloseFile();
	}
}