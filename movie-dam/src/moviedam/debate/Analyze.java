package moviedam.debate;

import java.util.HashSet;
import java.util.List;

public class Analyze {

	public double tf(List<String> doc, String term) {
		double result = 0;
		for (String word : doc) {
			if(term.equalsIgnoreCase(word))
				result++;
		}
		return (1+Math.log(result));
	}
	
	public double idf(List<List<String>> docs, String term) {
		long start = System.currentTimeMillis();
		double n = 0;
		for (List<String> doc : docs) {
			HashSet<String> doc2 = new HashSet<String>(doc);
			for (String word : doc2) {
				if(term.equalsIgnoreCase(word)) {
					n++;
					break;
				}
			}
		}
		long end = System.currentTimeMillis();
		System.out.println( "실행 시간 : " + ( end - start )/1000.0 );
		return Math.log(docs.size() / (1+n));
	}
	
	public double tfIdf(List<String> doc, List<List<String>> docs, String term) {
		return tf(doc, term) * idf(docs, term);
	}
}
