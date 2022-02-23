import java.util.Properties;
import java.util.Queue;
import java.util.PriorityQueue;


/**
 * Feedback Round Robin Scheduler
 * @author 184514
 * @version 2017
 */
public class FeedbackRRScheduler extends AbstractScheduler {

  /* Variables would include time quantum, along with a ready queue, 
    which can be coded as a queue of processes.
  */
    private int timeQuantum;
    private Queue<Process> readyQueue;
    
    /* Creates instance of Feedback Round Robin Scheduler */
    public FeedbackRRScheduler() {
        readyQueue = new PriorityQueue<Process>();
    }

   /*Initialisation of scheduler from the entered parameters */
    @Override
    public void initialize(Properties parameters) {
        timeQuantum = Integer.parseInt(parameters.getProperty("timeQuantum"));
    }
    
   /**
   * Returns the time quantum of this scheduler
   * or -1 if the scheduler does not require a timer interrupt.
   */
    @Override
    public int getTimeQuantum() {
        return timeQuantum;
    }
    
   /**
   * Returns whether the scheduler is preemptive, in this case True
   */
  public boolean isPreemptive() {
    return true;
  }
  
  /**
   * Adds a process to the ready queue.
   * usedFullTimeQuantum is true if process is being moved to ready
   * after having fully used its time quantum.
   */
  public void ready(Process process, boolean usedFullTimeQuantum) {
      //If the process has used the full time quantum
      if (usedFullTimeQuantum) 
    {
      /*Demotion of process (as priority has been increased and lower 
      number means higher priority)*/
          process.setPriority(process.getPriority() + 1);
    }
     readyQueue.offer(process); 
  }

  /**
   * Removes the next process to be run from the ready queue 
   * and returns it. 
   * Returns null if there is no process to run.
   */
  public Process schedule() {
    System.out.println("Scheduler selects process " + readyQueue.peek());
    return readyQueue.poll();
  }
}
