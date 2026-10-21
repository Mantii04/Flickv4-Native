package p2;

import android.app.ActivityManager;
import android.content.Context;
import android.text.format.Formatter;
import android.util.Log;
import androidx.media3.exoplayer.source.ProgressiveMediaSource;

/* loaded from: classes.dex */
public final class q {

    /* renamed from: a, reason: collision with root package name */
    public final int f19469a;

    /* renamed from: b, reason: collision with root package name */
    public final int f19470b;

    /* renamed from: c, reason: collision with root package name */
    public final int f19471c;

    public q(n nVar) {
        Context context = nVar.f19464a;
        ActivityManager activityManager = nVar.f19465b;
        int i2 = activityManager.isLowRamDevice() ? 2097152 : 4194304;
        this.f19471c = i2;
        int round = Math.round(activityManager.getMemoryClass() * ProgressiveMediaSource.DEFAULT_LOADING_CHECK_INTERVAL_BYTES * (activityManager.isLowRamDevice() ? 0.33f : 0.4f));
        o oVar = nVar.f19466c;
        float heightPixels = oVar.getHeightPixels() * oVar.getWidthPixels() * 4;
        float f3 = nVar.f19467d;
        int round2 = Math.round(heightPixels * f3);
        int round3 = Math.round(heightPixels * 2.0f);
        int i7 = round - i2;
        int i8 = round3 + round2;
        if (i8 <= i7) {
            this.f19470b = round3;
            this.f19469a = round2;
        } else {
            float f7 = i7 / (f3 + 2.0f);
            this.f19470b = Math.round(2.0f * f7);
            this.f19469a = Math.round(f7 * f3);
        }
        if (Log.isLoggable("MemorySizeCalculator", 3)) {
            StringBuilder sb = new StringBuilder("Calculation complete, Calculated memory cache size: ");
            sb.append(Formatter.formatFileSize(context, this.f19470b));
            sb.append(", pool size: ");
            sb.append(Formatter.formatFileSize(context, this.f19469a));
            sb.append(", byte array size: ");
            sb.append(Formatter.formatFileSize(context, i2));
            sb.append(", memory class limited? ");
            sb.append(i8 > round);
            sb.append(", max size: ");
            sb.append(Formatter.formatFileSize(context, round));
            sb.append(", memoryClass: ");
            sb.append(activityManager.getMemoryClass());
            sb.append(", isLowMemoryDevice: ");
            sb.append(activityManager.isLowRamDevice());
            Log.d("MemorySizeCalculator", sb.toString());
        }
    }

    public int getArrayPoolSizeInBytes() {
        return this.f19471c;
    }

    public int getBitmapPoolSize() {
        return this.f19469a;
    }

    public int getMemoryCacheSize() {
        return this.f19470b;
    }
}
