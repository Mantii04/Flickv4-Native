package flix.com.vision.tv;

import android.content.Intent;
import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.uwetrottmann.trakt5.TraktV2;
import e.AbstractActivityC0842v;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.models.HistoryTVLink;
import flix.com.vision.tv.M3UImportActivity;
import flix.com.vision.tv.MyImportActivity;
import flix.com.vision.tv.TVCategoriesActivity;
import h5.C0996j;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes2.dex */
public class M3UImportActivity extends AbstractActivityC0842v {

    /* renamed from: b, reason: collision with root package name */
    public C0996j f16185b;

    /* renamed from: e, reason: collision with root package name */
    public Typeface f16186e;

    /* renamed from: f, reason: collision with root package name */
    public TextView f16187f;

    /* renamed from: j, reason: collision with root package name */
    public TextView f16188j;

    /* renamed from: m, reason: collision with root package name */
    public TextView f16189m;

    /* renamed from: n, reason: collision with root package name */
    public RelativeLayout f16190n;

    /* renamed from: p, reason: collision with root package name */
    public RelativeLayout f16191p;

    /* renamed from: q, reason: collision with root package name */
    public FrameLayout f16192q;

    /* renamed from: r, reason: collision with root package name */
    public EditText f16193r;

    /* renamed from: s, reason: collision with root package name */
    public EditText f16194s;

    @Override // androidx.fragment.app.H, androidx.activity.ComponentActivity, z.r, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_m3u_import);
        AssetManager assets = getAssets();
        String str = Constant.f16184b;
        this.f16186e = Typeface.createFromAsset(assets, "fonts/pproduct_sans_rregular.ttf");
        this.f16185b = new C0996j();
        this.f16192q = (FrameLayout) findViewById(R.id.main_relative_view);
        this.f16189m = (TextView) findViewById(R.id.m3u_import_label);
        this.f16191p = (RelativeLayout) findViewById(R.id.save_and_open_button);
        this.f16190n = (RelativeLayout) findViewById(R.id.save_button);
        this.f16193r = (EditText) findViewById(R.id.edit_text_url);
        this.f16194s = (EditText) findViewById(R.id.edit_text_name);
        this.f16187f = (TextView) findViewById(R.id.save_open_label);
        this.f16188j = (TextView) findViewById(R.id.save_label);
        App.extractDominantColor(this.f16192q);
        final int i2 = 0;
        this.f16190n.setOnClickListener(new View.OnClickListener(this) { // from class: f5.n

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ M3UImportActivity f14401e;

            {
                this.f14401e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i2) {
                    case 0:
                        M3UImportActivity m3UImportActivity = this.f14401e;
                        String trim = m3UImportActivity.f16193r.getText().toString().replace(StringUtils.SPACE, "").trim();
                        if (!trim.contains("http://") && !trim.contains("https://")) {
                            Toast.makeText(m3UImportActivity.getBaseContext(), "url not valid. should start with http:// or https://", 0).show();
                            break;
                        } else {
                            String obj = m3UImportActivity.f16194s.getText().toString();
                            if (!obj.isEmpty() && obj.length() >= 2) {
                                String trim2 = m3UImportActivity.f16193r.getText().toString().replace(StringUtils.SPACE, "").trim();
                                String obj2 = m3UImportActivity.f16194s.getText().toString();
                                HistoryTVLink historyTVLink = new HistoryTVLink();
                                historyTVLink.name = obj2;
                                historyTVLink.url = trim2;
                                historyTVLink.type = TraktV2.API_VERSION;
                                App.getInstance().f14439r.addHistoryIPTV(historyTVLink);
                                m3UImportActivity.startActivity(new Intent(m3UImportActivity, (Class<?>) MyImportActivity.class));
                                m3UImportActivity.finish();
                                break;
                            } else {
                                Toast.makeText(m3UImportActivity.getBaseContext(), "Please enter playlist name", 0).show();
                                break;
                            }
                        }
                        break;
                    default:
                        M3UImportActivity m3UImportActivity2 = this.f14401e;
                        String trim3 = m3UImportActivity2.f16193r.getText().toString().replace(StringUtils.SPACE, "").trim();
                        if (!trim3.contains("http://") && !trim3.contains("https://")) {
                            Toast.makeText(m3UImportActivity2.getBaseContext(), "url not valid", 0).show();
                            break;
                        } else {
                            String obj3 = m3UImportActivity2.f16194s.getText().toString();
                            if (!obj3.isEmpty() && obj3.length() >= 2) {
                                String trim4 = m3UImportActivity2.f16193r.getText().toString().replace(StringUtils.SPACE, "").trim();
                                String obj4 = m3UImportActivity2.f16194s.getText().toString();
                                HistoryTVLink historyTVLink2 = new HistoryTVLink();
                                historyTVLink2.name = obj4;
                                historyTVLink2.url = trim4;
                                historyTVLink2.type = TraktV2.API_VERSION;
                                App.getInstance().f14439r.addHistoryIPTV(historyTVLink2);
                                Intent intent = new Intent(m3UImportActivity2, (Class<?>) TVCategoriesActivity.class);
                                intent.putExtra("is_file", false);
                                intent.putExtra("url", trim4.replace(StringUtils.SPACE, "").trim());
                                intent.putExtra("name", m3UImportActivity2.f16194s.getText().toString());
                                m3UImportActivity2.startActivity(intent);
                                App.getInstance().f14439r.addHistoryIPTV(historyTVLink2);
                                m3UImportActivity2.finish();
                                break;
                            } else {
                                Toast.makeText(m3UImportActivity2.getBaseContext(), "Please enter playlist name", 0).show();
                                break;
                            }
                        }
                        break;
                }
            }
        });
        final int i7 = 1;
        this.f16191p.setOnClickListener(new View.OnClickListener(this) { // from class: f5.n

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ M3UImportActivity f14401e;

            {
                this.f14401e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i7) {
                    case 0:
                        M3UImportActivity m3UImportActivity = this.f14401e;
                        String trim = m3UImportActivity.f16193r.getText().toString().replace(StringUtils.SPACE, "").trim();
                        if (!trim.contains("http://") && !trim.contains("https://")) {
                            Toast.makeText(m3UImportActivity.getBaseContext(), "url not valid. should start with http:// or https://", 0).show();
                            break;
                        } else {
                            String obj = m3UImportActivity.f16194s.getText().toString();
                            if (!obj.isEmpty() && obj.length() >= 2) {
                                String trim2 = m3UImportActivity.f16193r.getText().toString().replace(StringUtils.SPACE, "").trim();
                                String obj2 = m3UImportActivity.f16194s.getText().toString();
                                HistoryTVLink historyTVLink = new HistoryTVLink();
                                historyTVLink.name = obj2;
                                historyTVLink.url = trim2;
                                historyTVLink.type = TraktV2.API_VERSION;
                                App.getInstance().f14439r.addHistoryIPTV(historyTVLink);
                                m3UImportActivity.startActivity(new Intent(m3UImportActivity, (Class<?>) MyImportActivity.class));
                                m3UImportActivity.finish();
                                break;
                            } else {
                                Toast.makeText(m3UImportActivity.getBaseContext(), "Please enter playlist name", 0).show();
                                break;
                            }
                        }
                        break;
                    default:
                        M3UImportActivity m3UImportActivity2 = this.f14401e;
                        String trim3 = m3UImportActivity2.f16193r.getText().toString().replace(StringUtils.SPACE, "").trim();
                        if (!trim3.contains("http://") && !trim3.contains("https://")) {
                            Toast.makeText(m3UImportActivity2.getBaseContext(), "url not valid", 0).show();
                            break;
                        } else {
                            String obj3 = m3UImportActivity2.f16194s.getText().toString();
                            if (!obj3.isEmpty() && obj3.length() >= 2) {
                                String trim4 = m3UImportActivity2.f16193r.getText().toString().replace(StringUtils.SPACE, "").trim();
                                String obj4 = m3UImportActivity2.f16194s.getText().toString();
                                HistoryTVLink historyTVLink2 = new HistoryTVLink();
                                historyTVLink2.name = obj4;
                                historyTVLink2.url = trim4;
                                historyTVLink2.type = TraktV2.API_VERSION;
                                App.getInstance().f14439r.addHistoryIPTV(historyTVLink2);
                                Intent intent = new Intent(m3UImportActivity2, (Class<?>) TVCategoriesActivity.class);
                                intent.putExtra("is_file", false);
                                intent.putExtra("url", trim4.replace(StringUtils.SPACE, "").trim());
                                intent.putExtra("name", m3UImportActivity2.f16194s.getText().toString());
                                m3UImportActivity2.startActivity(intent);
                                App.getInstance().f14439r.addHistoryIPTV(historyTVLink2);
                                m3UImportActivity2.finish();
                                break;
                            } else {
                                Toast.makeText(m3UImportActivity2.getBaseContext(), "Please enter playlist name", 0).show();
                                break;
                            }
                        }
                        break;
                }
            }
        });
        this.f16185b.applyFontToView(this.f16187f, this.f16186e);
        this.f16185b.applyFontToView(this.f16188j, this.f16186e);
        this.f16185b.applyFontToView(this.f16193r, this.f16186e);
        this.f16185b.applyFontToView(this.f16194s, this.f16186e);
        this.f16185b.applyFontToView(this.f16189m, this.f16186e);
        String stringExtra = getIntent().getStringExtra("url");
        String stringExtra2 = getIntent().getStringExtra("label");
        if (stringExtra != null) {
            this.f16193r.setText(stringExtra);
        }
        if (stringExtra2 != null) {
            this.f16194s.setText(stringExtra2);
        }
    }
}
