void main() {
	//Slot instance
	var circleSlot = new Slot<CircleStick>();
	//CircleStick accepted in circleSlot
	circleSlot.insert(CircleStick());
	/*
	//SquareStick no accepted in circleSlot
	circleSlot.insert(SquareStick());
	*/
}

class CircleStick {}

class SquareStick {}

class Slot<Hole> {
	//insert method with Hole shape argument (generic method)
	insert(Hole shape) {}
}