package J2;

import android.annotation.SuppressLint;
import android.os.Build;

/* loaded from: classes.dex */
public final class j implements d {
    public void loadLibrary(String str) {
        System.loadLibrary(str);
    }

    @SuppressLint({"UnsafeDynamicallyLoadedCode"})
    public void loadPath(String str) {
        System.load(str);
    }

    public String mapLibraryName(String str) {
        return (str.startsWith("lib") && str.endsWith(".so")) ? str : System.mapLibraryName(str);
    }

    public String[] supportedAbis() {
        String[] strArr = Build.SUPPORTED_ABIS;
        if (strArr.length > 0) {
            return strArr;
        }
        String str = Build.CPU_ABI2;
        return !k.isEmpty(str) ? new String[]{Build.CPU_ABI, str} : new String[]{Build.CPU_ABI};
    }
}
