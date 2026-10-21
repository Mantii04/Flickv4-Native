package flix.com.vision.api.torbox;

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
import flix.com.vision.api.torbox.TorBoxApiKeyEntryActivity;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.Disposable;
import io.reactivex.schedulers.Schedulers;
import java.text.SimpleDateFormat;
import java.util.Locale;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes2.dex */
public class TorBoxApiKeyEntryActivity extends AbstractActivityC0842v {

    /* renamed from: p, reason: collision with root package name */
    public static final /* synthetic */ int f15841p = 0;

    /* renamed from: b, reason: collision with root package name */
    public FrameLayout f15842b;

    /* renamed from: e, reason: collision with root package name */
    public FrameLayout f15843e;

    /* renamed from: f, reason: collision with root package name */
    public ConstraintLayout f15844f;

    /* renamed from: j, reason: collision with root package name */
    public EditText f15845j;

    /* renamed from: m, reason: collision with root package name */
    public Disposable f15846m;

    /* renamed from: n, reason: collision with root package name */
    public d f15847n = null;

    public static String formatTorboxDate(String str) {
        try {
            Locale locale = Locale.US;
            return new SimpleDateFormat("MM/dd/yyyy HH:mm:ss", locale).format(new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", locale).parse(str));
        } catch (Exception unused) {
            return str;
        }
    }

    public final void e() {
        String trim = this.f15845j.getText().toString().trim();
        if (trim.isEmpty() || trim.contains(StringUtils.SPACE)) {
            Toast.makeText(getBaseContext(), "API Key cannot be empty or contain blank spaces", 1).show();
            return;
        }
        FragmentManager fragmentManager = getFragmentManager();
        d newInstance = d.newInstance(this, false);
        this.f15847n = newInstance;
        newInstance.setloading();
        try {
            this.f15847n.show(fragmentManager, "");
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        Disposable disposable = this.f15846m;
        if (disposable != null) {
            disposable.dispose();
        }
        this.f15846m = a.getTorboxUserAccount(trim).observeOn(AndroidSchedulers.mainThread()).subscribeOn(Schedulers.io()).subscribe(new u(4, this, trim), new c(this, 3));
    }

    @Override // androidx.fragment.app.H, androidx.activity.ComponentActivity, z.r, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.torbox_apikey_entry_activity);
        this.f15844f = (ConstraintLayout) findViewById(R.id.main_relative_view);
        this.f15843e = (FrameLayout) findViewById(R.id.confirm_pin_button);
        this.f15842b = (FrameLayout) findViewById(R.id.cancel_button);
        this.f15845j = (EditText) findViewById(R.id.edit_text_enter_pin);
        ConstraintLayout constraintLayout = this.f15844f;
        if (constraintLayout != null) {
            App.extractDominantColor(constraintLayout);
        }
        this.f15845j.setOnEditorActionListener(new E4.a(this, 3));
        final int i2 = 0;
        this.f15842b.setOnClickListener(new View.OnClickListener(this) { // from class: J4.a

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ TorBoxApiKeyEntryActivity f1540e;

            {
                this.f1540e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TorBoxApiKeyEntryActivity torBoxApiKeyEntryActivity = this.f1540e;
                switch (i2) {
                    case 0:
                        int i7 = TorBoxApiKeyEntryActivity.f15841p;
                        torBoxApiKeyEntryActivity.finish();
                        break;
                    default:
                        int i8 = TorBoxApiKeyEntryActivity.f15841p;
                        torBoxApiKeyEntryActivity.e();
                        break;
                }
            }
        });
        final int i7 = 1;
        this.f15843e.setOnClickListener(new View.OnClickListener(this) { // from class: J4.a

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ TorBoxApiKeyEntryActivity f1540e;

            {
                this.f1540e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TorBoxApiKeyEntryActivity torBoxApiKeyEntryActivity = this.f1540e;
                switch (i7) {
                    case 0:
                        int i72 = TorBoxApiKeyEntryActivity.f15841p;
                        torBoxApiKeyEntryActivity.finish();
                        break;
                    default:
                        int i8 = TorBoxApiKeyEntryActivity.f15841p;
                        torBoxApiKeyEntryActivity.e();
                        break;
                }
            }
        });
    }
}
