package a5;

import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
import flix.com.vision.App;
import flix.com.vision.api.alldebrid.AllDebridCommon;
import flix.com.vision.api.premiumize.PremiumizeCommon;
import flix.com.vision.api.realdebrid.RealDebridCommon;
import h5.AbstractC1000n;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes2.dex */
public final class i extends AsyncTask {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f4784a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ArrayList f4785b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ l f4786c;

    public i(l lVar, String str, ArrayList arrayList) {
        this.f4786c = lVar;
        this.f4784a = str;
        this.f4785b = arrayList;
    }

    @Override // android.os.AsyncTask
    public String doInBackground(Void... voidArr) {
        l lVar = this.f4786c;
        try {
            j6.h hVar = ((h6.h) g6.e.connect(this.f4784a)).get();
            if (!lVar.f4792c) {
                String str = AbstractC1000n.removeSpecialChars(lVar.f4790a.getTitle()) + lVar.f4790a.getYear();
                Iterator<org.jsoup.nodes.b> it = hVar.getElementsByTag("TR").iterator();
                int i2 = 0;
                loop0: while (true) {
                    boolean hasNext = it.hasNext();
                    ArrayList arrayList = this.f4785b;
                    if (hasNext) {
                        org.jsoup.nodes.b next = it.next();
                        Iterator<org.jsoup.nodes.b> it2 = next.getElementsByTag("A").iterator();
                        while (it2.hasNext()) {
                            org.jsoup.nodes.b next2 = it2.next();
                            if (lVar.removeSpecialChars(next2.text()).toLowerCase().contains(str.toLowerCase()) && flix.com.vision.processors.english.m.isEnglishlang(next2.text(), lVar.f4790a.getTitle())) {
                                Iterator<org.jsoup.nodes.b> it3 = next.getElementsByTag("A").iterator();
                                while (it3.hasNext()) {
                                    String attr = it3.next().attr("href");
                                    if (attr.startsWith("magnet")) {
                                        if (lVar.f4792c) {
                                            break loop0;
                                        }
                                        if (App.getInstance().addHash(attr)) {
                                            if (RealDebridCommon.f15828m) {
                                                new Handler(Looper.getMainLooper()).postDelayed(new A4.n(17, this, attr), i2 * 250);
                                            }
                                            if (AllDebridCommon.f15806f) {
                                                arrayList.add(attr);
                                            }
                                            if (PremiumizeCommon.f15822b) {
                                                lVar.getMagnetPremiumize(attr);
                                            }
                                            if (J4.b.f1541a) {
                                                lVar.getMagnetTorBox(attr);
                                            }
                                            if (G4.b.f1174a) {
                                                lVar.getMagnetOffcloud(attr);
                                            }
                                            i2++;
                                            if (i2 > lVar.max_page) {
                                                if (arrayList.size() > 0) {
                                                    lVar.addMagnetsAllDebrid(arrayList);
                                                    return null;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    } else if (arrayList.size() > 0) {
                        lVar.addMagnetsAllDebrid(arrayList);
                    }
                }
            }
        } catch (Exception unused) {
        }
        return null;
    }

    @Override // android.os.AsyncTask
    public void onPostExecute(String str) {
        super.onPostExecute((i) str);
    }
}
