using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;
using System.Linq;
using System.Reflection;

namespace Core.Utility
{
    public class Enums
    {
        public class EnumHelper<T>
        {
            public static string GetDisplayValue(T value)
            {
                try
                {
                    var fieldInfo = value.GetType().GetField(value.ToString());

                    var descriptionAttributes = fieldInfo.GetCustomAttributes(
                        typeof(DisplayAttribute), false) as DisplayAttribute[];

                    if (descriptionAttributes[0].ResourceType != null)
                        return LookupResource(descriptionAttributes[0].ResourceType, descriptionAttributes[0].Name);

                    if (descriptionAttributes == null) return string.Empty;
                    return (descriptionAttributes.Length > 0) ? descriptionAttributes[0].Name : value.ToString();
                }
                catch (NullReferenceException ex)
                {
                    return "Invalid Value";
                }
            }

            private static string LookupResource(Type resourceManagerProvider, string resourceKey)
            {
                foreach (PropertyInfo staticProperty in resourceManagerProvider.GetProperties(BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.Public))
                {
                    if (staticProperty.PropertyType == typeof(System.Resources.ResourceManager))
                    {
                        System.Resources.ResourceManager resourceManager = (System.Resources.ResourceManager)staticProperty.GetValue(null, null);
                        return resourceManager.GetString(resourceKey);
                    }
                }

                return resourceKey; // Fallback with the key name
            }
        }

        public enum CharacterGenerationMethod
        {
            [Display(Name = "Standard Array")]     //0
            StandardArray,

            [Display(Name = "Rolling")]     //1
            Rolling,

            [Display(Name = "Point Buy")]     //2
            PointBuy
        }
    }
}
