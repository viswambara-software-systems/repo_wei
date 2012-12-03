﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Configuration;

namespace Telavance.AdvantageSuite.Wei.ChipsParser
{
    public class TagConfigElementCollection: ConfigurationElementCollection
    {
        public TagConfigElementCollection()
        {
            base.AddElementName = "Tag";
        }
        public TagConfigElement this[int index]
        {
            get
            {
                return base.BaseGet(index) as TagConfigElement;
            }
            set
            {
                if (base.BaseGet(index) != null)
                {
                    base.BaseRemoveAt(index);
                }
                this.BaseAdd(index, value);
            }
        }

        protected override ConfigurationElement CreateNewElement()
        {
            return new TagConfigElement();
        }

        protected override Object GetElementKey(ConfigurationElement element)
        {
            return ((TagConfigElement)element).Id;
        }


    }
}
