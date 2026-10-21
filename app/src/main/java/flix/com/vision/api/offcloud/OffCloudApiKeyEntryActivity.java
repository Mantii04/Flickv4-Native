package flix.com.vision.api.offcloud;

import A4.u;
import D4.a;
import E4.c;
import Q4.d;
import android.app.FragmentManager;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.Toast;
import androidx.constraintlayout.widget.ConstraintLayout;
import e.AbstractActivityC0842v;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.api.offcloud.OffCloudApiKeyEntryActivity;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.Disposable;
import io.reactivex.schedulers.Schedulers;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes2.dex */
public class OffCloudApiKeyEntryActivity extends AbstractActivityC0842v {

    /* renamed from: p, reason: collision with root package name */
    public static final /* synthetic */ int f15808p = 0;

    /* renamed from: b, reason: collision with root package name */
    public FrameLayout f15809b;

    /* renamed from: e, reason: collision with root package name */
    public FrameLayout f15810e;

    /* renamed from: f, reason: collision with root package name */
    public ConstraintLayout f15811f;

    /* renamed from: j, reason: collision with root package name */
    public EditText f15812j;

    /* renamed from: m, reason: collision with root package name */
    public Disposable f15813m;

    /* renamed from: n, reason: collision with root package name */
    public d f15814n = null;

    public final void e() {
        String trim = this.f15812j.getText().toString().trim();
        if (trim.isEmpty() || trim.contains(StringUtils.SPACE)) {
            Toast.makeText(getBaseContext(), "API Key cannot be empty or contain blank spaces", 1).show();
            return;
        }
        FragmentManager fragmentManager = getFragmentManager();
        d newInstance = d.newInstance(this, false);
        this.f15814n = newInstance;
        newInstance.setloading();
        try {
            this.f15814n.show(fragmentManager, "");
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        Disposable disposable = this.f15813m;
        if (disposable != null) {
            disposable.dispose();
        }
        this.f15813m = a.getOffcloudUserAccount(trim).observeOn(AndroidSchedulers.mainThread()).subscribeOn(Schedulers.io()).subscribe(new u(2, this, trim), new c(this, 1));
    }

    @Override // androidx.fragment.app.H, androidx.activity.ComponentActivity, z.r, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.offcloud_apikey_entry_activity);
        this.f15811f = (ConstraintLayout) findViewById(R.id.main_relative_view);
        this.f15810e = (FrameLayout) findViewById(R.id.confirm_pin_button);
        this.f15809b = (FrameLayout) findViewById(R.id.cancel_button);
        this.f15812j = (EditText) findViewById(R.id.edit_text_enter_pin);
        ConstraintLayout constraintLayout = this.f15811f;
        if (constraintLayout != null) {
            App.extractDominantColor(constraintLayout);
        }
        this.f15812j.setOnEditorActionListener(new E4.a(this, 1));
        final int i2 = 0;
        this.f15809b.setOnClickListener(new View.OnClickListener(this) { // from class: G4.a

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ OffCloudApiKeyEntryActivity f1173e;

            {
                this.f1173e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                OffCloudApiKeyEntryActivity offCloudApiKeyEntryActivity = this.f1173e;
                switch (i2) {
                    case 0:
                        int i7 = OffCloudApiKeyEntryActivity.f15808p;
                        offCloudApiKeyEntryActivity.finish();
                        break;
                    default:
                        int i8 = OffCloudApiKeyEntryActivity.f15808p;
                        offCloudApiKeyEntryActivity.e();
                        break;
                }
            }
        });
        final int i7 = 1;
        this.f15810e.setOnClickListener(new View.OnClickListener(this) { // from class: G4.a

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ OffCloudApiKeyEntryActivity f1173e;

            {
                this.f1173e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                OffCloudApiKeyEntryActivity offCloudApiKeyEntryActivity = this.f1173e;
                switch (i7) {
                    case 0:
                        int i72 = OffCloudApiKeyEntryActivity.f15808p;
                        offCloudApiKeyEntryActivity.finish();
                        break;
                    default:
                        int i8 = OffCloudApiKeyEntryActivity.f15808p;
                        offCloudApiKeyEntryActivity.e();
                        break;
                }
            }
        });
    }
}
