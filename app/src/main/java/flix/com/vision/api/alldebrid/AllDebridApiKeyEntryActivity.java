package flix.com.vision.api.alldebrid;

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
import flix.com.vision.api.alldebrid.AllDebridApiKeyEntryActivity;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.Disposable;
import io.reactivex.schedulers.Schedulers;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes2.dex */
public class AllDebridApiKeyEntryActivity extends AbstractActivityC0842v {

    /* renamed from: p, reason: collision with root package name */
    public static final /* synthetic */ int f15797p = 0;

    /* renamed from: b, reason: collision with root package name */
    public RelativeLayout f15798b;

    /* renamed from: e, reason: collision with root package name */
    public RelativeLayout f15799e;

    /* renamed from: f, reason: collision with root package name */
    public RelativeLayout f15800f;

    /* renamed from: j, reason: collision with root package name */
    public EditText f15801j;

    /* renamed from: m, reason: collision with root package name */
    public Disposable f15802m;

    /* renamed from: n, reason: collision with root package name */
    public d f15803n = null;

    public static String getDate(long j7) {
        try {
            return new SimpleDateFormat("MM/dd/yyyy HH:mm:ss").format(new Date(j7 * 1000));
        } catch (Exception unused) {
            return "Unknown";
        }
    }

    public final void e() {
        String obj = this.f15801j.getText().toString();
        if (obj.contains(StringUtils.SPACE)) {
            Toast.makeText(getBaseContext(), "API Key cannot contain blank space", 1).show();
            return;
        }
        FragmentManager fragmentManager = getFragmentManager();
        d newInstance = d.newInstance(this, false);
        this.f15803n = newInstance;
        newInstance.setloading();
        try {
            this.f15803n.show(fragmentManager, "");
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        Disposable disposable = this.f15802m;
        if (disposable != null) {
            disposable.dispose();
        }
        this.f15802m = a.getAllDebridUserAccount(obj).observeOn(AndroidSchedulers.mainThread()).subscribeOn(Schedulers.newThread()).subscribe(new u(1, this, obj), new c(this, 0));
    }

    @Override // androidx.fragment.app.H, androidx.activity.ComponentActivity, z.r, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.all_debrid_apikey_entry_activity);
        this.f15800f = (RelativeLayout) findViewById(R.id.main_relative_view);
        this.f15799e = (RelativeLayout) findViewById(R.id.confirm_pin_button);
        this.f15798b = (RelativeLayout) findViewById(R.id.cancel_button);
        this.f15801j = (EditText) findViewById(R.id.edit_text_enter_pin);
        App.extractDominantColor(this.f15800f);
        final int i2 = 0;
        this.f15801j.setOnEditorActionListener(new E4.a(this, 0));
        this.f15798b.setOnClickListener(new View.OnClickListener(this) { // from class: E4.b

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ AllDebridApiKeyEntryActivity f974e;

            {
                this.f974e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AllDebridApiKeyEntryActivity allDebridApiKeyEntryActivity = this.f974e;
                switch (i2) {
                    case 0:
                        int i7 = AllDebridApiKeyEntryActivity.f15797p;
                        allDebridApiKeyEntryActivity.finish();
                        break;
                    default:
                        int i8 = AllDebridApiKeyEntryActivity.f15797p;
                        allDebridApiKeyEntryActivity.e();
                        break;
                }
            }
        });
        final int i7 = 1;
        this.f15799e.setOnClickListener(new View.OnClickListener(this) { // from class: E4.b

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ AllDebridApiKeyEntryActivity f974e;

            {
                this.f974e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AllDebridApiKeyEntryActivity allDebridApiKeyEntryActivity = this.f974e;
                switch (i7) {
                    case 0:
                        int i72 = AllDebridApiKeyEntryActivity.f15797p;
                        allDebridApiKeyEntryActivity.finish();
                        break;
                    default:
                        int i8 = AllDebridApiKeyEntryActivity.f15797p;
                        allDebridApiKeyEntryActivity.e();
                        break;
                }
            }
        });
    }
}
