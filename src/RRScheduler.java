import java.util.Properties;
import java.util.LinkedList;
import java.util.Queue;


/**
 * Round Robin Scheduler
 * @author 184514
 * @version 2017
 */
public class RRScheduler extends AbstractScheduler {

  /* Variables would include time quantum, along with a ready queue, 
    which can be coded as a queue of processes.
  */
    private int timeQuantum;
    private Queue<Process> readyQueue;
    public RRScheduler() {
        readyQueue = new LinkedList<Process>();
    }
    //Initialisation of scheduler from the entered parameters
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
   * Returns whether the scheduler is preemptive, in this true.
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
      //offer adds the process to the end of the queue, i.e. the tail of the list
      readyQueue.offer(process);
  }

  /**
   * Removes the next process to be run from the ready queue 
   * and returns it. 
   * Returns null if there is no process to run.
   */
  public Process schedule() {
    //peek has a look at the first item/process in the queue
    System.out.println("Scheduler selects process " + readyQueue.peek());
    //poll removes the process from the front of the queue. If empty returns null
    return readyQueue.poll();
  }
}
