package flix.com.vision.api.premiumize;

import A4.u;
import D4.a;
import E4.c;
import Q4.d;
import android.app.FragmentManager;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.RelativeLayout;
import android.widget.Toast;
import e.AbstractActivityC0842v;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.api.premiumize.PremApiKeyEntryActivity;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.Disposable;
import io.reactivex.schedulers.Schedulers;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes2.dex */
public class PremApiKeyEntryActivity extends AbstractActivityC0842v {

    /* renamed from: p, reason: collision with root package name */
    public static final /* synthetic */ int f15815p = 0;

    /* renamed from: b, reason: collision with root package name */
    public RelativeLayout f15816b;

    /* renamed from: e, reason: collision with root package name */
    public RelativeLayout f15817e;

    /* renamed from: f, reason: collision with root package name */
    public RelativeLayout f15818f;

    /* renamed from: j, reason: collision with root package name */
    public EditText f15819j;

    /* renamed from: m, reason: collision with root package name */
    public Disposable f15820m;

    /* renamed from: n, reason: collision with root package name */
    public d f15821n = null;

    public static String getDate(long j7) {
        try {
            return new SimpleDateFormat("MM/dd/yyyy HH:mm:ss").format(new Date(j7 * 1000));
        } catch (Exception unused) {
            return "Unknown";
        }
    }

    public final void e() {
        String obj = this.f15819j.getText().toString();
        if (obj.contains(StringUtils.SPACE)) {
            Toast.makeText(getBaseContext(), "API Key cannot contain blank space", 1).show();
            return;
        }
        FragmentManager fragmentManager = getFragmentManager();
        d newInstance = d.newInstance(this, false);
        this.f15821n = newInstance;
        newInstance.setloading();
        try {
            this.f15821n.show(fragmentManager, "");
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        Disposable disposable = this.f15820m;
        if (disposable != null) {
            disposable.dispose();
        }
        this.f15820m = a.getPremUserAccount(obj).observeOn(AndroidSchedulers.mainThread()).subscribeOn(Schedulers.newThread()).subscribe(new u(3, this, obj), new c(this, 2));
    }

    @Override // androidx.fragment.app.H, androidx.activity.ComponentActivity, z.r, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.prem_apikey_entry_activity);
        this.f15818f = (RelativeLayout) findViewById(R.id.main_relative_view);
        this.f15817e = (RelativeLayout) findViewById(R.id.confirm_pin_button);
        this.f15816b = (RelativeLayout) findViewById(R.id.cancel_button);
        this.f15819j = (EditText) findViewById(R.id.edit_text_enter_pin);
        App.extractDominantColor(this.f15818f);
        this.f15819j.setOnEditorActionListener(new E4.a(this, 2));
        final int i2 = 0;
        this.f15816b.setOnClickListener(new View.OnClickListener(this) { // from class: H4.a

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ PremApiKeyEntryActivity f1217e;

            {
                this.f1217e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PremApiKeyEntryActivity premApiKeyEntryActivity = this.f1217e;
                switch (i2) {
                    case 0:
                        int i7 = PremApiKeyEntryActivity.f15815p;
                        premApiKeyEntryActivity.finish();
                        break;
                    default:
                        int i8 = PremApiKeyEntryActivity.f15815p;
                        premApiKeyEntryActivity.e();
                        break;
                }
            }
        });
        final int i7 = 1;
        this.f15817e.setOnClickListener(new View.OnClickListener(this) { // from class: H4.a

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ PremApiKeyEntryActivity f1217e;

            {
                this.f1217e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PremApiKeyEntryActivity premApiKeyEntryActivity = this.f1217e;
                switch (i7) {
                    case 0:
                        int i72 = PremApiKeyEntryActivity.f15815p;
                        premApiKeyEntryActivity.finish();
                        break;
                    default:
                        int i8 = PremApiKeyEntryActivity.f15815p;
                        premApiKeyEntryActivity.e();
                        break;
                }
            }
        });
    }
}
