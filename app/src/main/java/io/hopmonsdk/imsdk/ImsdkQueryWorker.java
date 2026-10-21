package io.hopmonsdk.imsdk;

import B1.AbstractC0037q;
import android.content.Context;
import android.provider.Settings;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import io.hopmonsdk.Hopmn;
import java.util.ArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import l5.AbstractC1230a;
import l5.b;
import o5.C1473e;
import org.json.JSONObject;
import s5.AbstractC1643b;

/* loaded from: classes2.dex */
public class ImsdkQueryWorker extends Worker {

    /* renamed from: n, reason: collision with root package name */
    public static boolean f16793n = true;

    /* renamed from: p, reason: collision with root package name */
    public static volatile C1473e f16794p;

    public ImsdkQueryWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
    }

    public static C1473e a(String str, String str2) {
        if (f16794p == null) {
            synchronized (ImsdkQueryWorker.class) {
                try {
                    if (f16794p == null) {
                        ArrayList arrayList = new ArrayList();
                        for (String str3 : str.split(",")) {
                            String trim = str3.trim();
                            if (!trim.isEmpty()) {
                                arrayList.add(trim);
                            }
                        }
                        f16794p = new C1473e(arrayList, str2);
                    }
                } finally {
                }
            }
        }
        return f16794p;
    }

    @Override // androidx.work.Worker
    public AbstractC0037q doWork() {
        Context applicationContext = getApplicationContext();
        if (!Hopmn.isConsentAgreed(applicationContext)) {
            AbstractC1643b.i("ImsdkQueryWorker", "Consent not granted - skip active check and stop imsdk", new Object[0]);
            AbstractC1230a.stopImsdk();
            f16793n = true;
            return AbstractC0037q.success();
        }
        try {
            String string = getInputData().getString("PUBLISHER_ID");
            String string2 = getInputData().getString("SEED_CSV");
            String string3 = Settings.Secure.getString(applicationContext.getContentResolver(), "android_id");
            if (string2 != null && !string2.trim().isEmpty()) {
                C1473e a7 = a(string2, string);
                String str = "/active.php?app=imsdk2&app2=appgain&pub=" + string + "&deviceid=" + string3 + "&ver=extpub";
                CountDownLatch countDownLatch = new CountDownLatch(1);
                String str2 = null;
                AtomicReference atomicReference = new AtomicReference(null);
                AtomicReference atomicReference2 = new AtomicReference(null);
                a7.executeGet(str, new b(atomicReference, countDownLatch, atomicReference2));
                if (countDownLatch.await(90L, TimeUnit.SECONDS)) {
                    String str3 = (String) atomicReference.get();
                    if (str3 != null) {
                        String trim = str3.trim();
                        String str4 = "btv";
                        if (trim.startsWith("{")) {
                            try {
                                JSONObject jSONObject = new JSONObject(trim);
                                String optString = jSONObject.optString("status", null);
                                str2 = jSONObject.optString("publisher", null);
                                trim = optString;
                            } catch (Exception unused) {
                            }
                        }
                        if ("OK".equalsIgnoreCase(trim)) {
                            if (str2 != null && !str2.trim().isEmpty()) {
                                str4 = str2;
                            }
                            AbstractC1643b.i("ImsdkQueryWorker", "active OK, publisher=%s", str4);
                            if (f16793n) {
                                AbstractC1230a.startImsdk(applicationContext, str4);
                                f16793n = false;
                            }
                        } else {
                            AbstractC1643b.i("ImsdkQueryWorker", "active INACTIVE - stop imsdk", new Object[0]);
                            AbstractC1230a.stopImsdk();
                            f16793n = true;
                        }
                        return AbstractC0037q.success();
                    }
                    AbstractC1643b.e("ImsdkQueryWorker", "active check failed: %s", atomicReference2.get());
                } else {
                    AbstractC1643b.e("ImsdkQueryWorker", "active check timed out", new Object[0]);
                }
                return AbstractC0037q.retry();
            }
            AbstractC1643b.e("ImsdkQueryWorker", "No seed CSV - cannot resolve API server", new Object[0]);
            return AbstractC0037q.failure();
        } catch (Exception e3) {
            AbstractC1643b.e("ImsdkQueryWorker", "Exception in imsdk active check: %s", e3.getMessage());
            return AbstractC0037q.retry();
        }
    }
}
