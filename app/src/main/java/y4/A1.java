package y4;

import android.app.FragmentManager;
import android.view.View;
import flix.com.vision.App;
import flix.com.vision.activities.WatchedAcvivity;
import h5.AbstractC0995i;

/* loaded from: classes2.dex */
public final /* synthetic */ class A1 implements View.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21106b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ WatchedAcvivity f21107e;

    public /* synthetic */ A1(WatchedAcvivity watchedAcvivity, int i2) {
        this.f21106b = i2;
        this.f21107e = watchedAcvivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        WatchedAcvivity watchedAcvivity = this.f21107e;
        int i2 = 1;
        switch (this.f21106b) {
            case 0:
                if (watchedAcvivity.f15299j.isEmpty()) {
                    AbstractC0995i.makeToast(watchedAcvivity, "Your History is Empty", false);
                    break;
                } else {
                    FragmentManager fragmentManager = watchedAcvivity.getFragmentManager();
                    Q4.d newInstance = Q4.d.newInstance(watchedAcvivity, true);
                    newInstance.setTitle("Clear Watched History");
                    newInstance.setMessage("Do you really want to Clear your Watched History ?");
                    newInstance.setButton1("CANCEL", new A4.q(11));
                    newInstance.setButton2("YES", new A1(watchedAcvivity, i2));
                    try {
                        newInstance.show(fragmentManager, "");
                        break;
                    } catch (Exception e3) {
                        e3.printStackTrace();
                        return;
                    }
                }
            default:
                int i7 = WatchedAcvivity.f15295n;
                watchedAcvivity.getClass();
                if (!App.getInstance().f14439r.clearHistory()) {
                    AbstractC0995i.makeToast(watchedAcvivity.getBaseContext(), "An error occurred", true);
                    break;
                } else {
                    AbstractC0995i.makeToast(watchedAcvivity.getBaseContext(), "History cleared", true);
                    watchedAcvivity.finish();
                    break;
                }
        }
    }
}
