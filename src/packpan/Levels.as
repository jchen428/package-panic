package packpan 
{
	import JSON;

	/**
	 * A container for embedded levels.
	 * 
	 * @author Jay Fisher
	 */

	public class Levels
	{
		//Embed each level as a json String here
		[Embed(source="../../json/level_test1.json", mimeType="application/octet-stream")]
		private var Level_Test1:Class;
		[Embed(source="../../json/level_testT.json", mimeType="application/octet-stream")]
		private var Level_TestT:Class;
		[Embed(source="../../json/level_barrier.json", mimeType="application/octet-stream")]
		private var Level_Barrier:Class;
		[Embed(source="../../json/level_magnet.json", mimeType="application/octet-stream")]
		private var Level_Magnet:Class;
		[Embed(source="../../json/level_magnetEasy.json", mimeType="application/octet-stream")]
		private var Level_MagnetEasy:Class;
		[Embed(source="../../json/level_chute.json", mimeType="application/octet-stream")]
		private var Level_Chute:Class;
		[Embed(source="../../json/level_chute1.json", mimeType="application/octet-stream")]
		private var Level_Chute1:Class;

		[Embed(source="../../json/level_tut_00.json", mimeType="application/octet-stream")]
		private var Level_Tut00:Class;
		[Embed(source="../../json/level_tut_01.json", mimeType="application/octet-stream")]
		private var Level_Tut01:Class;
		[Embed(source="../../json/level_tut_02.json", mimeType="application/octet-stream")]
		private var Level_Tut02:Class;
		[Embed(source="../../json/level_tut_03.json", mimeType="application/octet-stream")]
		private var Level_Tut03:Class;
		
		//Each element of the array is a 15-length array of levels - some of which may be undefined
		private var pages:Array;

		//Constructor called by the Engine on startup
		public function Levels() 
		{
			pages = new Array(1);
			pages[0] = new Array(15);

			/*pages[0][0] = JSON.parse(new Level_Tut00());
			pages[0][1] = JSON.parse(new Level_Tut01());
			pages[0][2] = JSON.parse(new Level_Tut02());
			pages[0][3] = JSON.parse(new Level_Tut03());
			pages[0][5] = JSON.parse(new Level_Test1());
			pages[0][6] = JSON.parse(new Level_TestT());
			pages[0][7] = JSON.parse(new Level_Barrier());
			pages[0][8] = JSON.parse(new Level_MagnetEasy());
			pages[0][9] = JSON.parse(new Level_Magnet());*/

			/*pages[0][0] = JSON.parse(new Level_Test1());
			pages[0][1] = JSON.parse(new Level_TestT());*/
			pages[0][2] = JSON.parse(new Level_Barrier());
			pages[0][3] = JSON.parse(new Level_MagnetEasy());
			pages[0][4] = JSON.parse(new Level_Magnet());
			pages[0][0] = JSON.parse(new Level_Chute());
			pages[0][1] = JSON.parse(new Level_Chute1());

		}

		/**
		 *	Returns the number of pages
		 *	@returns	The number of pages
		 */
		public function numPages():uint
		{
			return pages.length;
		}

		/**
		 *	Returns whether or not a level exists on that page at that index
		 *	@param	page	The page the level is on
		 *	@param	index	The index of the level on its page, 0-14
		 *	@returns	true if a level exists on that page at that index
		 */
		public function hasLevel(page:int, index:int):Boolean
		{
			return pages[page][index] != undefined;
		}

		/**
		 *	Returns the level on that page and index as a dictionary.
		 *	@param	page	The page the level is on
		 *	@param	index	The index of the level on its page, 0-14
		 *	@returns	The level on that page at that index
		 */
		public function getLevel(page:int, index:int):Object
		{
			return pages[page][index];
		}
	}
}