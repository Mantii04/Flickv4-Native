package flix.com.vision.activities;

import android.os.AsyncTask;
import flix.com.vision.App;
import flix.com.vision.activities.DramaHomeActivity;
import g6.e;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public final class c extends AsyncTask {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f15410a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ArrayList f15411b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DramaHomeActivity.DRAMA_TYPE f15412c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ DramaHomeActivity f15413d;

    public c(DramaHomeActivity dramaHomeActivity, String str, ArrayList arrayList, DramaHomeActivity.DRAMA_TYPE drama_type) {
        this.f15413d = dramaHomeActivity;
        this.f15410a = str;
        this.f15411b = arrayList;
        this.f15412c = drama_type;
    }

    @Override // android.os.AsyncTask
    public String doInBackground(Void... voidArr) {
        try {
            String str = this.f15410a;
            this.f15411b.addAll(this.f15413d.e(e.parse(App.get(str, str).body().string())));
            return null;
        } catch (Exception e3) {
            e3.printStackTrace();
            return null;
        }
    }

    @Override // android.os.AsyncTask
    public void onPostExecute(String str) {
        super.onPostExecute((c) str);
        int ordinal = this.f15412c.ordinal();
        ArrayList arrayList = this.f15411b;
        DramaHomeActivity dramaHomeActivity = this.f15413d;
        switch (ordinal) {
            case 1:
                if (!arrayList.isEmpty()) {
                    dramaHomeActivity.f14619z.addAll(arrayList);
                    dramaHomeActivity.f14586F.notifyDataSetChanged();
                    dramaHomeActivity.f14593M.invalidate();
                    arrayList.clear();
                    break;
                } else {
                    dramaHomeActivity.f14592L.setVisibility(8);
                    break;
                }
            case 2:
                if (!arrayList.isEmpty()) {
                    dramaHomeActivity.f14583C.addAll(arrayList);
                    dramaHomeActivity.f14589I.notifyDataSetChanged();
                    dramaHomeActivity.f14596P.invalidate();
                    arrayList.clear();
                    break;
                } else {
                    dramaHomeActivity.f14596P.setVisibility(8);
                    break;
                }
            case 3:
                if (!arrayList.isEmpty()) {
                    dramaHomeActivity.f14584D.addAll(arrayList);
                    dramaHomeActivity.f14590J.notifyDataSetChanged();
                    dramaHomeActivity.f14597Q.invalidate();
                    arrayList.clear();
                    break;
                } else {
                    dramaHomeActivity.f14597Q.setVisibility(8);
                    break;
                }
            case 4:
                if (!arrayList.isEmpty()) {
                    dramaHomeActivity.f14585E.addAll(arrayList);
                    dramaHomeActivity.f14591K.notifyDataSetChanged();
                    dramaHomeActivity.f14598R.invalidate();
                    arrayList.clear();
                    break;
                } else {
                    dramaHomeActivity.f14598R.setVisibility(8);
                    break;
                }
            case 5:
                if (!arrayList.isEmpty()) {
                    dramaHomeActivity.f14582B.addAll(arrayList);
                    dramaHomeActivity.f14588H.notifyDataSetChanged();
                    dramaHomeActivity.f14595O.invalidate();
                    arrayList.clear();
                    break;
                } else {
                    dramaHomeActivity.f14595O.setVisibility(8);
                    break;
                }
            case 6:
                if (!arrayList.isEmpty()) {
                    dramaHomeActivity.f14581A.addAll(arrayList);
                    dramaHomeActivity.f14587G.notifyDataSetChanged();
                    dramaHomeActivity.f14594N.invalidate();
                    arrayList.clear();
                    break;
                } else {
                    dramaHomeActivity.f14594N.setVisibility(8);
                    break;
                }
        }
    }
}
