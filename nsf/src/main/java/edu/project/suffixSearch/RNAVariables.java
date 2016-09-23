/*
 * Compiled using NetBeans IDE 8.1
 * @author Jithendar Anandan
 * NSA Project
 * Texas A&M University - Commerce
 * A Class contains all the RNA variables and Setters and getters
 */
package edu.project.suffixSearch;

public class RNAVariables {
    
    private int[][] InputRNA = new int[5000][4500];
    private int SuffixStructure[][] = new int[3000000][3];
    private int SuffixNucleotide[][] = new int[3000000][3];
    private int[][] SearchRNA = new int[100][400];
    private int[] LengthOfEachRNA= new int[5000];
    private int Search, Submit, Nucleotide,NoOfSearchPatterns,FileNumber,SuffixArrayIndexIteratorStructure,SuffixArrayIndexIteratorNucleotide;
    private String SearchFileName,ConcatenatedFileName;
    private String OutputString,InputFileName;
    
    //Getters 
    
    public int[][] getInputRNA(){
        return InputRNA;
    }
    
    public int[][] getSuffixStructure(){
    return SuffixStructure;
    }
    
    public int[][] getSuffixNucleotide(){
    return SuffixNucleotide;
    }
    
    public int[][] getSearchRNA(){
    return SearchRNA;
    }
    
    public int getLengthOfEachRNA(int x){
        int y;
        for (y=0; this.SearchRNA[x][y] != -999; y++)
        {
        //    System.out.print(searchRNA[x][y]+" ");
        } 
        this.LengthOfEachRNA[x] = y-1;
       // System.out.println();
        return this.LengthOfEachRNA[x];
    }
    
    public int getSearch(){
    return Search;
    }
    
    public int getSubmit(){
    return Submit;
    }
    
    public int getNucleotide(){
    return Nucleotide;
    }
    
    public int getNoOfSearchPatterns(){
    return NoOfSearchPatterns;
    }
    
    public int getFileNumber(){
    return FileNumber;
    }
    
    public int getSuffixArrayIndexIteratorStructure(){
    return SuffixArrayIndexIteratorStructure;
    }
    
    public int getSuffixArrayIndexIteratorNucleotide(){
    return SuffixArrayIndexIteratorNucleotide;
    }
    
    public String getSearchFileName(){
    return SearchFileName;
    }
    
    public String getConcatenatedFileName(){
    return ConcatenatedFileName;
    }
    
    public String getOutputString(){
    return OutputString;
    }
    
    public String getInputFileName(){
    return InputFileName;
    }
    
    //Setters
    
    public void setInputRNA(int[][] InputRNA ){
    this.InputRNA = InputRNA ;
    }
    
    public void setSuffixStructure(int[][] SuffixStructure){
    this.SuffixStructure = SuffixStructure;
    }
    
    public void setSuffixNucleotide(int[][] SuffixNucleotide){
    this.SuffixNucleotide = SuffixNucleotide;
    }
    
    public void setSearchRNA(int[][] SearchRNA){
    this.SearchRNA = SearchRNA;
    }
    
    public void setLengthOfEachRNA(int x){
    this.LengthOfEachRNA[x] = x;
    }
    
    public void setSearch(int Search){
    this.Search = Search;
    }
    
    public void setSubmit(int Submit){
    this.Submit = Submit;
    }
    
    public void setNucleotide(int Nucleotide){
    this.Nucleotide = Nucleotide;
    }
    
    public void setNoOfSearchPatterns(int NoOfSearchPatterns){
    this.NoOfSearchPatterns = NoOfSearchPatterns;
    }
    
    public void setFileNumber(int FileNumber){
    this.FileNumber = FileNumber;
    }
    
    public void setSuffixArrayIndexIteratorNucleotide(int SuffixArrayIndexIteratorNucleotide){
    this.SuffixArrayIndexIteratorNucleotide = SuffixArrayIndexIteratorNucleotide;
    }
    
    public void setSuffixArrayIndexIteratorStructure(int SuffixArrayIndexIteratorStructure){
    this.SuffixArrayIndexIteratorStructure = SuffixArrayIndexIteratorStructure;
    }
    
    public void setSearchFileName(String SearchFileName){
    this.SearchFileName = SearchFileName;
    }
    
    public void setConcatenatedFileName(String ConcatenatedFileName){
    this.ConcatenatedFileName = ConcatenatedFileName;
    }
    
    public void setOutputString(String OutputString){
    this.OutputString = OutputString;
    }
    
    public void setInputFileName(String InputFileName){
    this.InputFileName = InputFileName;
    }
}
