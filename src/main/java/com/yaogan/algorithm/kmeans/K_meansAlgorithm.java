package com.yaogan.algorithm.kmeans;

public class K_meansAlgorithm {

	public void runAlgorithm(String srcpath, String destpath) {
		
		ImageCluster ic=new ImageCluster();
		
		ic.kmeans(srcpath,destpath, 4, 10);
		
	}
	
}
