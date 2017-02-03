{-
Copyright (C) 2014 Matthew Pickering <matthewtpickering@gmail.com>

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
-}

{- |
   Module      : Text.TeXMath.Unicode.Fonts
   Copyright   : Copyright (C) 2014 Matthew Pickering
   License     : GNU GPL, version 2 or above

   Maintainer  : Matthew Pickering <matthewtpickering@gmail.com>
   Stability   : alpha
   Portability : portable

Utilities to convert between MS font codepoints and unicode characters.
-}
module Text.TeXMath.Unicode.Fonts (getUnicode, Font(..), stringToFont) where
import qualified Data.Map as M

-- | Enumeration of recognised fonts
data Font = Symbol -- ^ <http://en.wikipedia.org/wiki/Symbol_(typeface) Adobe Symbol>
          deriving (Show, Eq)

-- | Parse font name into Font if possible.
stringToFont :: String -> Maybe Font
stringToFont "Symbol" = Just Symbol
stringToFont _ = Nothing

-- | Given a font and codepoint, returns the corresponding unicode
-- character
getUnicode :: Font -> Char -> Maybe Char
getUnicode Symbol c = M.lookup c symbol

-- Generated from lib/fonts/symbol.txt
symbol :: M.Map Char Char
symbol = M.fromList
  [ (' ',' ')
  , (' ','\160')
  , ('!','!')
  , ('"','\8704')
  , ('#','#')
  , ('$','\8707')
  , ('%','%')
  , ('&','&')
  , ('\'','\8715')
  , ('(','(')
  , (')',')')
  , ('*','\8727')
  , ('+','+')
  , (',',',')
  , ('-','\8722')
  , ('.','.')
  , ('/','/')
  , ('0','0')
  , ('1','1')
  , ('2','2')
  , ('3','3')
  , ('4','4')
  , ('5','5')
  , ('6','6')
  , ('7','7')
  , ('8','8')
  , ('9','9')
  , (':',':')
  , (';',';')
  , ('<','<')
  , ('=','=')
  , ('>','>')
  , ('?','?')
  , ('@','\8773')
  , ('A','\913')
  , ('B','\914')
  , ('C','\935')
  , ('D','\916')
  , ('D','\8710')
  , ('E','\917')
  , ('F','\934')
  , ('G','\915')
  , ('H','\919')
  , ('I','\921')
  , ('J','\977')
  , ('K','\922')
  , ('L','\923')
  , ('M','\924')
  , ('N','\925')
  , ('O','\927')
  , ('P','\928')
  , ('Q','\920')
  , ('R','\929')
  , ('S','\931')
  , ('T','\932')
  , ('U','\933')
  , ('V','\962')
  , ('W','\937')
  , ('W','\8486')
  , ('X','\926')
  , ('Y','\936')
  , ('Z','\918')
  , ('[','[')
  , ('\\','\8756')
  , (']',']')
  , ('^','\8869')
  , ('_','_')
  , ('`','\63717')
  , ('a','\945')
  , ('b','\946')
  , ('c','\967')
  , ('d','\948')
  , ('e','\949')
  , ('f','\966')
  , ('g','\947')
  , ('h','\951')
  , ('i','\953')
  , ('j','\981')
  , ('k','\954')
  , ('l','\955')
  , ('m','\181')
  , ('m','\956')
  , ('n','\957')
  , ('o','\959')
  , ('p','\960')
  , ('q','\952')
  , ('r','\961')
  , ('s','\963')
  , ('t','\964')
  , ('u','\965')
  , ('v','\982')
  , ('w','\969')
  , ('x','\958')
  , ('y','\968')
  , ('z','\950')
  , ('{','{')
  , ('|','|')
  , ('}','}')
  , ('~','\8764')
  , ('\160','\8364')
  , ('\161','\978')
  , ('\162','\8242')
  , ('\163','\8804')
  , ('\164','\8260')
  , ('\164','\8725')
  , ('\165','\8734')
  , ('\166','\402')
  , ('\167','\9827')
  , ('\168','\9830')
  , ('\169','\9829')
  , ('\170','\9824')
  , ('\171','\8596')
  , ('\172','\8592')
  , ('\173','\8593')
  , ('\174','\8594')
  , ('\175','\8595')
  , ('\176','\176')
  , ('\177','\177')
  , ('\178','\8243')
  , ('\179','\8805')
  , ('\180','\215')
  , ('\181','\8733')
  , ('\182','\8706')
  , ('\183','\8226')
  , ('\184','\247')
  , ('\185','\8800')
  , ('\186','\8801')
  , ('\187','\8776')
  , ('\188','\8230')
  , ('\189','\63718')
  , ('\190','\63719')
  , ('\191','\8629')
  , ('\192','\8501')
  , ('\193','\8465')
  , ('\194','\8476')
  , ('\195','\8472')
  , ('\196','\8855')
  , ('\197','\8853')
  , ('\198','\8709')
  , ('\199','\8745')
  , ('\200','\8746')
  , ('\201','\8835')
  , ('\202','\8839')
  , ('\203','\8836')
  , ('\204','\8834')
  , ('\205','\8838')
  , ('\206','\8712')
  , ('\207','\8713')
  , ('\208','\8736')
  , ('\209','\8711')
  , ('\210','\63194')
  , ('\211','\63193')
  , ('\212','\63195')
  , ('\213','\8719')
  , ('\214','\8730')
  , ('\215','\8901')
  , ('\216','\172')
  , ('\217','\8743')
  , ('\218','\8744')
  , ('\219','\8660')
  , ('\220','\8656')
  , ('\221','\8657')
  , ('\222','\8658')
  , ('\223','\8659')
  , ('\224','\9674')
  , ('\225','\9001')
  , ('\226','\63720')
  , ('\227','\63721')
  , ('\228','\63722')
  , ('\229','\8721')
  , ('\230','\63723')
  , ('\231','\63724')
  , ('\232','\63725')
  , ('\233','\63726')
  , ('\234','\63727')
  , ('\235','\63728')
  , ('\236','\63729')
  , ('\237','\63730')
  , ('\238','\63731')
  , ('\239','\63732')
  , ('\241','\9002')
  , ('\242','\8747')
  , ('\243','\8992')
  , ('\244','\63733')
  , ('\245','\8993')
  , ('\246','\63734')
  , ('\247','\63735')
  , ('\248','\63736')
  , ('\249','\63737')
  , ('\250','\63738')
  , ('\251','\63739')
  , ('\252','\63740')
  , ('\253','\63741')
  , ('\254','\63742')]
