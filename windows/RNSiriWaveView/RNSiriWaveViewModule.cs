using ReactNative.Bridge;
using System;
using System.Collections.Generic;
using Windows.ApplicationModel.Core;
using Windows.UI.Core;

namespace Siri.Wave.View.RNSiriWaveView
{
    /// <summary>
    /// A module that allows JS to share data.
    /// </summary>
    class RNSiriWaveViewModule : NativeModuleBase
    {
        /// <summary>
        /// Instantiates the <see cref="RNSiriWaveViewModule"/>.
        /// </summary>
        internal RNSiriWaveViewModule()
        {

        }

        /// <summary>
        /// The name of the native module.
        /// </summary>
        public override string Name
        {
            get
            {
                return "RNSiriWaveView";
            }
        }
    }
}
