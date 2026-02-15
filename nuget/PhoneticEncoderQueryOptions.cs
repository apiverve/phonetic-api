using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.PhoneticEncoder
{
    /// <summary>
    /// Query options for the Phonetic Encoder API
    /// </summary>
    public class PhoneticEncoderQueryOptions
    {
        /// <summary>
        /// The word to encode phonetically
        /// </summary>
        [JsonProperty("word")]
        public string Word { get; set; }

        /// <summary>
        /// Algorithm to use
        /// </summary>
        [JsonProperty("algorithm")]
        public string Algorithm { get; set; }
    }
}
