package r5;

import android.os.AsyncTask;
import io.hopmonsdk.HopmnSrv;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.concurrent.TimeUnit;
import s5.AbstractC1643b;

/* renamed from: r5.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class AsyncTaskC1601a extends AsyncTask {

    /* renamed from: a, reason: collision with root package name */
    public volatile boolean f19880a;

    /* renamed from: b, reason: collision with root package name */
    public volatile long f19881b;

    /* renamed from: c, reason: collision with root package name */
    public volatile long f19882c;

    @Override // android.os.AsyncTask
    public Long doInBackground(String... strArr) {
        this.f19882c = 0L;
        this.f19881b = System.currentTimeMillis();
        this.f19880a = true;
        ArrayList arrayList = new ArrayList(strArr.length);
        arrayList.addAll(Arrays.asList(strArr));
        AbstractC1643b.i("ProxyAsyncTask", "Starting hopmnserver server %s", arrayList);
        try {
            HopmnSrv.start((String[]) arrayList.toArray(new String[0]));
            this.f19880a = false;
            AbstractC1643b.i("ProxyAsyncTask", "Released hopmn thread", new Object[0]);
            this.f19882c = System.currentTimeMillis() - this.f19881b;
            return Long.valueOf(this.f19882c);
        } catch (Throwable th) {
            this.f19880a = false;
            throw th;
        }
    }

    public long getUpTime(TimeUnit timeUnit) {
        if (this.f19880a) {
            return TimeUnit.MILLISECONDS.convert(System.currentTimeMillis() - this.f19881b, timeUnit);
        }
        return 0L;
    }

    public boolean isRunning() {
        return this.f19880a;
    }

    @Override // android.os.AsyncTask
    public void onPostExecute(Long l7) {
        AbstractC1643b.i("ProxyAsyncTask", "Executed hopmn async task for %ss", Double.valueOf(l7.longValue() / 1000.0d));
    }
}
