/**
 * Compiled using NetBeans IDE 8.1
 * @author Eric Fry and Jithendar Anandan
 * NSA Project
 * Texas A&M University - Commerce
 * Main function
**/
package edu.project.suffixSearch;



public class NSFRNA {
 
    
	public NSFRNA(RNAVariables var){ 
        
        
        //Rabin will set the follwing variables  
        var.setNucleotide(1);
        var.setInputFileName("#");
       
        //Set Concatenated file name and Search file name        
        var.setConcatenatedFileName("/Users/50007728/GitHub/RNA/Base/nsf/src/main/resources/a/NewFormatConcatenated.txt");         
        
        
        //Reading InputRNA
        System.out.println("Reading Input RNA....  "); 
        SuffixFileProcess NewFormatarray = new SuffixFileProcess();
        NewFormatarray.OpenInputFile(var.getConcatenatedFileName());
        var.setInputRNA(NewFormatarray.ReadFile(var.getNucleotide(), var.getInputRNA(),0));
        var.setFileNumber(NewFormatarray.BuildIntegerArray(var.getInputRNA()));
        
        //Reading Suffix Array Nucleotide
        System.out.println("Reading Suffix Array of Nucleotide from file....  "); 
        CreateSuffixFile readSuffixNucleotide = new CreateSuffixFile();
        readSuffixNucleotide.OpenFile("/Users/50007728/GitHub/RNA/Base/nsf/src/main/resources/a/SuffixFileNucleotide.txt");
        var.setSuffixNucleotide(readSuffixNucleotide.ReadFile(var.getSuffixNucleotide()));
        var.setSuffixArrayIndexIteratorNucleotide(readSuffixNucleotide.SuffixArrayIndexIterator());
        readSuffixNucleotide.CloseFile();
        
        //Reading Suffix Array Structure
        System.out.println("Reading Suffix Array of structure from file....  ");
        CreateSuffixFile readSuffixStructure = new CreateSuffixFile();
        readSuffixStructure.OpenFile("/Users/50007728/GitHub/RNA/Base/nsf/src/main/resources/a/SuffixFileStructure.txt");
        var.setSuffixStructure(readSuffixStructure.ReadFile(var.getSuffixStructure()));
        var.setSuffixArrayIndexIteratorStructure(readSuffixStructure.SuffixArrayIndexIterator());
        readSuffixStructure.CloseFile();
        
         
    }
}