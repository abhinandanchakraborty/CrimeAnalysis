package org.crime.hadoop.driver;

import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.fs.FileSystem;
import org.apache.hadoop.fs.Path;
import org.apache.hadoop.io.IntWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Job;
import org.apache.hadoop.mapreduce.lib.input.FileInputFormat;
import org.apache.hadoop.mapreduce.lib.output.FileOutputFormat;
import org.apache.hadoop.util.Tool;
import org.apache.hadoop.util.ToolRunner;
import org.crime.hadoop.map.MonthWiseCrimeMap;
import org.crime.hadoop.reduce.CrimeTypeReduce;;

public class CrimeMonthWiseDriver implements Tool{
	
	public void setConf(Configuration conf) {
		// TODO Auto-generated method stub

	}

	public Configuration getConf() {
		// TODO Auto-generated method stub
		Configuration conf = new Configuration();
		return conf;
	}

	public int run(String[] args) throws Exception {

		Configuration conf = getConf();
		Job job = Job.getInstance(conf);
		job.setJobName("CrimeType");
		job.setJobName(CrimeTypeDriver.class.getSimpleName());
		job.setJarByClass(CrimeTypeDriver.class);

		job.setNumReduceTasks(1);

		FileInputFormat.setInputPaths(job, new Path(args[0]));
		FileOutputFormat.setOutputPath(job, new Path(args[1]));

		job.setOutputKeyClass(Text.class);
		job.setOutputValueClass(IntWritable.class);

		job.setMapperClass(MonthWiseCrimeMap.class);
		job.setCombinerClass(CrimeTypeReduce.class);
		job.setReducerClass(CrimeTypeReduce.class);
		//job.setCombinerClass(TopNReducer.class);
		//job.setReducerClass(TopNReducer.class);

		// Delete the output directory if it exists already.
		Path outputDir = new Path(args[1]);
		FileSystem.get(conf).delete(outputDir, true);

		long startTime = System.currentTimeMillis();
		job.waitForCompletion(true);
		return 0;
	}
	
	public static void main(String args[]) throws Exception{
		
		CrimeAreaWiseDriver c = new CrimeAreaWiseDriver();
		String param[] = {"/home/abhinandan/DUMP/Police_Department_Incidents.csv","output/monthwise"};
		try {
			ToolRunner.run(new CrimeMonthWiseDriver(), param);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
