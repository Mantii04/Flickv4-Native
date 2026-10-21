package f5;

import android.app.FragmentManager;
import android.content.Intent;
import android.view.View;
import flix.com.vision.activities.ModernFilePickerActivity;
import flix.com.vision.tv.M3UImportActivity;
import flix.com.vision.tv.MyImportActivity;
import z.AbstractC1958d;

/* loaded from: classes2.dex */
public final /* synthetic */ class o implements View.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f14402b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MyImportActivity f14403e;

    public /* synthetic */ o(MyImportActivity myImportActivity, int i2) {
        this.f14402b = i2;
        this.f14403e = myImportActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i2 = 1;
        MyImportActivity myImportActivity = this.f14403e;
        switch (this.f14402b) {
            case 0:
                int i7 = MyImportActivity.f16195n;
                FragmentManager fragmentManager = myImportActivity.getFragmentManager();
                Q4.d newInstance = Q4.d.newInstance(myImportActivity, true);
                newInstance.setTitle("M3U Import");
                newInstance.setMessage("How do you want to import your M3U Playlist?");
                newInstance.setButton2("From File", new o(myImportActivity, i2));
                newInstance.setButton1("From URL", new o(myImportActivity, 2));
                try {
                    newInstance.show(fragmentManager, "");
                    break;
                } catch (Exception e3) {
                    e3.printStackTrace();
                    return;
                }
            case 1:
                int i8 = MyImportActivity.f16195n;
                myImportActivity.getClass();
                try {
                    if (A.h.checkSelfPermission(myImportActivity, "android.permission.WRITE_EXTERNAL_STORAGE") == -1) {
                        AbstractC1958d.requestPermissions(myImportActivity, new String[]{"android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE"}, 1000);
                        break;
                    }
                } catch (Exception e7) {
                    e7.printStackTrace();
                }
                myImportActivity.startActivityForResult(new Intent(myImportActivity, (Class<?>) ModernFilePickerActivity.class), 12345);
                break;
            default:
                int i9 = MyImportActivity.f16195n;
                myImportActivity.getClass();
                myImportActivity.startActivity(new Intent(myImportActivity, (Class<?>) M3UImportActivity.class));
                break;
        }
    }
}
