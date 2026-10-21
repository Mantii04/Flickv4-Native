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

/* loaded from: classes2.dex */
public final class m extends AsyncTask {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f4793a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ArrayList f4794b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ p f4795c;

    public m(p pVar, String str, ArrayList arrayList) {
        this.f4795c = pVar;
        this.f4793a = str;
        this.f4794b = arrayList;
    }

    @Override // android.os.AsyncTask
    public String doInBackground(Void... voidArr) {
        p pVar = this.f4795c;
        try {
            j6.h hVar = ((h6.h) g6.e.connect(this.f4793a)).get();
            if (!pVar.f4804f) {
                String str = AbstractC1000n.removeSpecialChars(pVar.f4799a.getTitle()) + pVar.f4803e;
                Iterator<org.jsoup.nodes.b> it = hVar.getElementsByTag("TR").iterator();
                int i2 = 0;
                loop0: while (true) {
                    boolean hasNext = it.hasNext();
                    ArrayList arrayList = this.f4794b;
                    if (hasNext) {
                        org.jsoup.nodes.b next = it.next();
                        Iterator<org.jsoup.nodes.b> it2 = next.getElementsByTag("A").iterator();
                        while (it2.hasNext()) {
                            org.jsoup.nodes.b next2 = it2.next();
                            if (pVar.removeSpecialChars(next2.text()).toLowerCase().contains(str.toLowerCase()) && flix.com.vision.processors.english.m.isEnglishlang(next2.text(), pVar.f4799a.getTitle())) {
                                Iterator<org.jsoup.nodes.b> it3 = next.getElementsByTag("A").iterator();
                                while (it3.hasNext()) {
                                    String attr = it3.next().attr("href");
                                    if (attr.startsWith("magnet")) {
                                        if (pVar.f4804f) {
                                            break loop0;
                                        }
                                        if (App.getInstance().addHash(attr)) {
                                            if (RealDebridCommon.f15828m) {
                                                D4.a.getTorrent(attr, RealDebridCommon.f15826f, RealDebridCommon.f15824b).observeOn(AndroidSchedulers.mainThread()).subscribeOn(Schedulers.newThread()).subscribe(new E4.c(pVar, 8), new A4.c(19));
                                            }
                                            if (AllDebridCommon.f15806f) {
                                                arrayList.add(attr);
                                            }
                                            if (PremiumizeCommon.f15822b) {
                                                pVar.getMagnetPremiumize(attr);
                                            }
                                            if (J4.b.f1541a) {
                                                pVar.getMagnetTorBox(attr);
                                            }
                                            if (G4.b.f1174a) {
                                                pVar.getMagnetOffcloud(attr);
                                            }
                                            i2++;
                                            if (i2 > pVar.max_page) {
                                                if (arrayList.size() > 0) {
                                                    pVar.addMagnetsAllDebrid(arrayList);
                                                    return null;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    } else if (arrayList.size() > 0) {
                        pVar.addMagnetsAllDebrid(arrayList);
                    }
                }
            }
        } catch (Exception unused) {
        }
        return null;
    }

    @Override // android.os.AsyncTask
    public void onPostExecute(String str) {
        super.onPostExecute((m) str);
    }
}
