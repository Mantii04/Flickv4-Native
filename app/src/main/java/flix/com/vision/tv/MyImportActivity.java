package flix.com.vision.tv;

import A4.g;
import C4.e0;
import android.content.Intent;
import android.os.Bundle;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.Toast;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.firebase.sessions.settings.RemoteSettings;
import com.uwetrottmann.trakt5.TraktV2;
import f5.o;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.models.HistoryTVLink;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;

/* loaded from: classes2.dex */
public class MyImportActivity extends flix.com.vision.activities.base.a {

    /* renamed from: n, reason: collision with root package name */
    public static final /* synthetic */ int f16195n = 0;

    /* renamed from: b, reason: collision with root package name */
    public RecyclerView f16196b;

    /* renamed from: e, reason: collision with root package name */
    public e0 f16197e;

    /* renamed from: f, reason: collision with root package name */
    public RelativeLayout f16198f;

    /* renamed from: j, reason: collision with root package name */
    public final ArrayList f16199j = new ArrayList();

    /* renamed from: m, reason: collision with root package name */
    public ImageView f16200m;

    public void editItem(HistoryTVLink historyTVLink) {
        if (historyTVLink.type.equalsIgnoreCase("3")) {
            Toast.makeText(getBaseContext(), "local files cannot be edited", 1).show();
            return;
        }
        if (historyTVLink.type.equalsIgnoreCase(TraktV2.API_VERSION)) {
            Toast.makeText(getBaseContext(), "Our playlist cannot be edited", 1).show();
            return;
        }
        Intent intent = new Intent(this, (Class<?>) M3UImportActivity.class);
        intent.putExtra("url", historyTVLink.url);
        intent.putExtra("label", historyTVLink.name);
        startActivity(intent);
    }

    @Override // androidx.fragment.app.H, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i2, int i7, Intent intent) {
        super.onActivityResult(i2, i7, intent);
        if (i2 == 12345 && i7 == -1) {
            String stringExtra = intent.getStringExtra("file_extra_data");
            HistoryTVLink historyTVLink = new HistoryTVLink();
            try {
                String[] split = stringExtra.split(RemoteSettings.FORWARD_SLASH_STRING);
                historyTVLink.name = split[split.length - 1];
            } catch (Exception unused) {
                historyTVLink.name = stringExtra;
            }
            historyTVLink.url = stringExtra;
            historyTVLink.type = "3";
            App.getInstance().f14439r.addHistoryIPTV(historyTVLink);
            Intent intent2 = new Intent(this, (Class<?>) TVCategoriesActivity.class);
            intent2.putExtra("is_file", true);
            intent2.putExtra("url", stringExtra);
            startActivity(intent2);
        }
    }

    @Override // flix.com.vision.activities.base.a, androidx.fragment.app.H, androidx.activity.ComponentActivity, z.r, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_tv_history);
        Iterator<HistoryTVLink> it = App.getInstance().f14439r.getHistoryIPTVFromDb().iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            ArrayList arrayList = this.f16199j;
            if (!hasNext) {
                Collections.sort(arrayList);
                this.f16200m = (ImageView) findViewById(R.id.image_plus_button);
                this.f16196b = (RecyclerView) findViewById(R.id.recyclerview);
                this.f16198f = (RelativeLayout) findViewById(R.id.add_button);
                this.f16197e = new e0(getBaseContext(), arrayList, this);
                this.f16196b.setLayoutManager(new LinearLayoutManager(this));
                this.f16196b.setAdapter(this.f16197e);
                this.f16196b.requestFocus();
                this.f16198f.setOnClickListener(new o(this, 0));
                this.f16198f.setOnFocusChangeListener(new g(this, 7));
                return;
            }
            HistoryTVLink next = it.next();
            String str = next.type;
            if (str != null && !str.equals("1")) {
                arrayList.add(next);
            }
        }
    }

    @Override // flix.com.vision.activities.base.a, androidx.fragment.app.H, android.app.Activity
    public void onResume() {
        super.onResume();
        ArrayList arrayList = this.f16199j;
        arrayList.clear();
        Iterator<HistoryTVLink> it = App.getInstance().f14439r.getHistoryIPTVFromDb().iterator();
        while (it.hasNext()) {
            HistoryTVLink next = it.next();
            String str = next.type;
            if (str != null && !str.equals("1")) {
                arrayList.add(next);
            }
        }
        this.f16197e.notifyDataSetChanged();
    }

    public void openItem(HistoryTVLink historyTVLink) {
        Intent intent = new Intent(this, (Class<?>) TVCategoriesActivity.class);
        String str = historyTVLink.type;
        intent.putExtra("is_file", str != null && str.equals("3"));
        intent.putExtra("url", historyTVLink.url);
        intent.putExtra("name", historyTVLink.name);
        startActivity(intent);
    }

    public void removeItem(HistoryTVLink historyTVLink) {
        App.getInstance().f14439r.deleteHistoryIptvItem(historyTVLink);
        this.f16199j.remove(historyTVLink);
        this.f16197e.notifyDataSetChanged();
    }
}
