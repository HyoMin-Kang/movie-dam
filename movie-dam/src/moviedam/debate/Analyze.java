package moviedam.debate;

import java.util.List;

import kr.co.shineware.nlp.komoran.core.analyzer.Komoran;

public class Analyze {
	String path = this.getClass().getResource("models-full").getPath();
	Komoran komoran = new Komoran(path);
	
	public double tf(List<String> doc, String term) {
		double result = 0;
		for (String word : doc) {
			if(term.equalsIgnoreCase(word))
				result++;
		}
		System.out.println(term+" tf:"+result/doc.size());
		return result/doc.size();
	}

	public double idf(List<List<String>> docs, String term) {
		double n = 0;
		for (List<String> doc : docs) {
			for (String word : doc) {
				if(term.equalsIgnoreCase(word)) {
					n++;
					break;
				}
			}
		}
		System.out.println(term+" idf:"+Math.log(docs.size() / n));
		return Math.log(docs.size() / n);
	}
	
	public double tfIdf(List<String> doc, List<List<String>> docs, String term) {
		return tf(doc, term) * idf(docs, term);
	}
}
