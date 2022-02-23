import java.util.Properties;
import java.util.PriorityQueue;
import java.lang.Math;


/**
 * Shortest Job First Scheduler
 * @author 184514
 * @version 2017
 */
public class SJFScheduler extends AbstractScheduler {
/* Variables used will be the initial burst estimate, the exponential averaging 
    param alpha(a), along with the ready queue*/
  private PriorityQueue<Process> readyQueue;
  private double burstEstimate;
  private double alpha;
  
/* Creates instance of Feedback Round Robin Scheduler */
    public SJFScheduler() {
        readyQueue = new PriorityQueue<Process>();
    }
    
   /* Initializes the scheduler from entered parameters */
  @Override
  public void initialize(Properties parameters) {
    burstEstimate = Integer.parseInt(parameters.getProperty("initialBurstEstimate"));
    alpha = Double.parseDouble(parameters.getProperty("alphaBurstEstimate"));
  }
  
  /**
   * Adds a process to the ready queue.
   * usedFullTimeQuantum is true if process is being moved to ready
   * after having fully used its time quantum.
   */
  public void ready(Process process, boolean usedFullTimeQuantum) {
/* Computes the estimate for the next burst, sets it to an integer, 
      sets the estimate as the process' priority and adds 
      the process to the ready queue. */
    double nextBurstEst = 0;
    int nextBurstEstInt;
    
    if (process.getPriority() == 0) {
        nextBurstEst = (1 - alpha) * burstEstimate;
    }else {
        nextBurstEst = alpha * process.getRecentBurst() + (1-alpha) * process.getPriority();
    }
    nextBurstEstInt = Math.toIntExact(Math.round(nextBurstEst));
   
    process.setPriority(nextBurstEstInt);
    readyQueue.add(process);
      
  }

  /**
   * Removes the next process to be run from the ready queue 
   * and returns it. 
   * Returns null if there is no process to run.
   */
  public Process schedule() {
//Selects process with shortest CPU Burst/highest priority  i.e. lowest value
//Removes & Returns this process, returns null if queue empty.
    System.out.println("Scheduler selects process " + readyQueue.peek());
    return readyQueue.poll();

  }
}
