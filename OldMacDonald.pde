//your variable declarations here
void setup()
{
	Farm macDonald = new Farm();   
	macDonald.animalSounds();
}

interface Animal 
{    
	public String getSound();        
	public String getType(); 
}  

class Farm  
{     
	private Animal[] aBunchOfAnimals = new Animal[3];    
	public Farm()     
	{       
		aBunchOfAnimals[0] = new namedCow("cow","Bessie", "moo");           
		aBunchOfAnimals[1] = new Chicken("chick","cluck", "cheep");       
		aBunchOfAnimals[2] = new Pig("pig","oink");    
	}         
	public void animalSounds()    
	{       
		for (int i=0; i < aBunchOfAnimals.length; i++)      
		{          
			System.out.println( aBunchOfAnimals[i].getType() + " goes " + aBunchOfAnimals[i].getSound());       
		}    
		System.out.println( "The cow is known as " + ((namedCow)aBunchOfAnimals[0]).getName() );    
	} 
}

class Cow implements Animal 
{     
	protected String myType;     
	protected String mySound;      
	public Cow()    
	{         
		myType = "unknown";         
		mySound = "unknown";     
	}   
	public Cow(String type, String sound)    
	{         
		myType = type;         
		mySound = sound;     
	}          
	public String getSound()
	{
		return mySound;
	}     
	public String getType()
	{
		return myType;
	} 
}

class namedCow extends Cow
{
	private String myName;
	namedCow(String type, String name, String sound)
	{
		myType = type;
		myName = name;
		mySound = sound;
	}
	public String getName()
	{
		return myName;
	}
}

class Chicken implements Animal 
{     
	private String myType;     
	private String mySound1;  
	private String mySound2;    
	public Chicken(String type, String sound)    
	{         
		myType = type;         
		mySound1 = sound;     
	}  
	public Chicken(String type, String sound1, String sound2)    
	{         
		myType = type;         
		mySound1 = sound1;  
		mySound2 = sound2;   
	}         
	public String getSound()
	{
		if(Math.random() < 0.5)
		{
			return mySound1;
		}
		else
		{
			return mySound2;
		}
	}     
	public String getType()
	{
		return myType;
	} 
}

class Pig implements Animal 
{     
	private String myType;     
	private String mySound;      
	public Pig(String type, String sound)    
	{         
		myType = type;         
		mySound = sound;     
	}          
	public String getSound()
	{
		return mySound;
	}     
	public String getType()
	{
		return myType;
	} 
}