import java.util.Properties;
import java.util.Queue;
import java.util.LinkedList;


/**
 * Ideal Shortest Job First Scheduler
 * @author 184514
 * @version 2017
 */
public class IdealSJFScheduler extends AbstractScheduler {

  private LinkedList<Process> readyQueue;
  /**
   * Creates an instance of the Ideal SJF Scheduler
   */
  public IdealSJFScheduler() {
    /*Linked list is used rather than Queue as easier to traverse and has handy
    get() command along with jobs needing to be removed from any part of the list,
    while a queue only has access to poll() method which removes first element. */
    readyQueue = new LinkedList<Process>();
  }
  /**
   * Adds a process to the ready queue.
   * usedFullTimeQuantum is true if process is being moved to ready
   * after having fully used its time quantum.
   */
  public void ready(Process process, boolean usedFullTimeQuantum) {
      //offer could be used here
    readyQueue.add(process);
  }

  /**
   * Removes the next process to be run from the ready queue 
   * and returns it. 
   * Returns null if there is no process to run.
   */
  public Process schedule() {

    if (readyQueue.size() > 0) {

      //Index of process with shortest next CPU burst
      int index = 0;
      
      for (int x = 1; x < readyQueue.size(); x++) {
        if (readyQueue.get(x).getNextBurst() < readyQueue.get(index).getNextBurst()) {
          index = x;
        }
      }

      //return process with the next min CPU burst & remove it from queue
      System.out.println("Scheduler selects process " + readyQueue.get(index).toString());
      /* poll not used here as shortest job could be at the end of a list */
      return readyQueue.remove(index);
    }

    // Return null otherwise i.e no processes to run
    return null;
  }
}
