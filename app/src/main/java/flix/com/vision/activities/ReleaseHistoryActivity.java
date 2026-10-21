package flix.com.vision.activities;

import C4.X;
import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.os.Bundle;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import e.AbstractActivityC0842v;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.tv.Constant;
import h5.C0996j;

/* loaded from: classes2.dex */
public class ReleaseHistoryActivity extends AbstractActivityC0842v {
    @Override // androidx.fragment.app.H, androidx.activity.ComponentActivity, z.r, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_release_history);
        TextView textView = (TextView) findViewById(R.id.page_title);
        C0996j c0996j = new C0996j();
        AssetManager assets = getAssets();
        String str = Constant.f16184b;
        c0996j.applyFontToView(textView, Typeface.createFromAsset(assets, "fonts/product_sans_bold.ttf"));
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.recycler_history);
        recyclerView.setLayoutManager(new LinearLayoutManager(this));
        recyclerView.setAdapter(new X(this, App.f14425J));
    }
}
