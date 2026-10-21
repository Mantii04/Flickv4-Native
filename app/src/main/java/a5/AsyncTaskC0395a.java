package a5;

import android.os.AsyncTask;
import flix.com.vision.App;
import flix.com.vision.api.alldebrid.AllDebridCommon;
import flix.com.vision.api.premiumize.PremiumizeCommon;
import flix.com.vision.api.realdebrid.RealDebridCommon;
import h5.AbstractC1000n;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.schedulers.Schedulers;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: a5.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class AsyncTaskC0395a extends AsyncTask {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f4763a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ArrayList f4764b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ C0398d f4765c;

    public AsyncTaskC0395a(C0398d c0398d, String str, ArrayList arrayList) {
        this.f4765c = c0398d;
        this.f4763a = str;
        this.f4764b = arrayList;
    }

    @Override // android.os.AsyncTask
    public String doInBackground(Void... voidArr) {
        String str;
        C0398d c0398d = this.f4765c;
        try {
            j6.h hVar = ((h6.h) g6.e.connect(this.f4763a)).get();
            if (!c0398d.f4771c) {
                String str2 = AbstractC1000n.removeSpecialChars(c0398d.f4769a.getTitle()) + c0398d.f4769a.getYear();
                Iterator<org.jsoup.nodes.b> it = hVar.getElementsByTag("LI").iterator();
                int i2 = 0;
                loop0: while (true) {
                    boolean hasNext = it.hasNext();
                    ArrayList arrayList = this.f4764b;
                    if (!hasNext) {
                        if (arrayList.size() <= 0) {
                            return null;
                        }
                        c0398d.addMagnetsAllDebrid(arrayList);
                        return null;
                    }
                    org.jsoup.nodes.b next = it.next();
                    if (next.attr("class") != null && next.attr("class").contains("card search-result")) {
                        Iterator<org.jsoup.nodes.b> it2 = next.getElementsByTag("A").iterator();
                        while (it2.hasNext()) {
                            org.jsoup.nodes.b next2 = it2.next();
                            if (c0398d.removeSpecialChars(next2.text()).toLowerCase().contains(str2.toLowerCase()) && flix.com.vision.processors.english.m.isEnglishlang(next2.text(), c0398d.f4769a.getTitle())) {
                                Iterator<org.jsoup.nodes.b> it3 = next.getElementsByTag("A").iterator();
                                while (it3.hasNext()) {
                                    String attr = it3.next().attr("href");
                                    if (attr.startsWith("magnet")) {
                                        if (c0398d.f4771c) {
                                            break loop0;
                                        }
                                        if (App.getInstance().addHash(attr)) {
                                            if (RealDebridCommon.f15828m) {
                                                str = null;
                                                try {
                                                    D4.a.getTorrent(attr, RealDebridCommon.f15826f, RealDebridCommon.f15824b).observeOn(AndroidSchedulers.mainThread()).subscribeOn(Schedulers.newThread()).subscribe(new E4.c(c0398d, 5), new A4.c(16));
                                                } catch (Exception unused) {
                                                    return null;
                                                }
                                            } else {
                                                str = null;
                                            }
                                            if (AllDebridCommon.f15806f) {
                                                arrayList.add(attr);
                                            }
                                            if (PremiumizeCommon.f15822b) {
                                                c0398d.getMagnetPremiumize(attr);
                                            }
                                            if (J4.b.f1541a) {
                                                c0398d.getMagnetTorBox(attr);
                                            }
                                            if (G4.b.f1174a) {
                                                c0398d.getMagnetOffcloud(attr);
                                            }
                                            i2++;
                                            if (i2 > c0398d.max_page) {
                                                if (arrayList.size() <= 0) {
                                                    return str;
                                                }
                                                c0398d.addMagnetsAllDebrid(arrayList);
                                                return str;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        } catch (Exception unused2) {
        }
        return null;
    }

    @Override // android.os.AsyncTask
    public void onPostExecute(String str) {
        super.onPostExecute((AsyncTaskC0395a) str);
    }
}
