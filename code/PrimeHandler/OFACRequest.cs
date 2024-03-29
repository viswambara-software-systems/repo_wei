﻿/*
**  File Name:		OFACRequest.cs
**
**  Functional Description:
**
**      This is the XML format used by Prime
**	
**
**	Author:	Lakshman Ramakrishnan
**  Facility	    WEI
**  Creation Date:  12/30/2010
**
*******************************************************************************
**                                                                           **
**      COPYRIGHT                                                            **
**                                                                           **
** (C) Copyright 2010                                                        **
** Telavance, inc                                                            **
**                                                                           **
** This software is furnished under a license for use only on a single       **
** computer system and may be copied only with the inclusion of the  above   **
** copyright notice. This software or any other copies thereof, may not be   **
** provided or otherwise made available to any other person  except for use  **
** on such system and to one who agrees to these license terms. title and    **
** ownership of the software shall at all times remain in Telavance,inc      **
** Inc.                                                                      **
**                                                                           **
** The information in this software is subject to change without notice and  **
** should not be construed as a commitment by Telavance, Inc.	             **
**									     									 **
*******************************************************************************
 									    
*******************************************************************************
 		                    Maintenance History				    
-------------|----------|------------------------------------------------------
    Date     |	Person  |  Description of Modification			    
-------------|----------|------------------------------------------------------

12/30/2010       RL        Inital version
*/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Xml;
using System.Xml.Serialization;
using System.IO;

namespace Telavance.AdvantageSuite.Wei.PrimeHandler
{
    [Serializable]
    [XmlRoot("OFACRequest")]
    public class OFACRequest
    {
        [XmlElement(ElementName = "RequestRef")]
        public string requestRef;

        [XmlElement(ElementName = "Dept")]
        public string dept;

        [XmlElement(ElementName = "Branch")]
        public string branch;

        [XmlElement(ElementName = "Data")]
        public string data;

        public static OFACRequest getOFACRequest(String message)
        {
            var xs = new XmlSerializer(typeof(OFACRequest));

            using (var stringReader = new StringReader(message))
            {
                XmlReader reader = new XmlTextReader(stringReader);
                var request = (OFACRequest)xs.Deserialize(reader);
                return request;
            }
        }
    }

            
}
