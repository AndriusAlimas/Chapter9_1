package example.beans;
// This is bean class
public class Tips {
	//Fields:
	 private String currentTip;
	 	// Default constructor: (required for beans)
	    public Tips() {
	    }
	    // 1-arg constructor
	    public Tips(String currentTip) {
	        this.setCurrentTip(currentTip);
	    }
	    // Getters:
	    public String getCurrentTip() {
	        return this.currentTip;
	    }
	    // Setters:
	    public void setCurrentTip(String currentTip) {
	        this.currentTip = currentTip;
	    }
}
