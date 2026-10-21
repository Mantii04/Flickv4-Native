package C4;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import flix.com.vision.R;
import flix.com.vision.adapters.ModernFileAdapter$MODE;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class L extends m1.V {

    /* renamed from: d, reason: collision with root package name */
    public final Context f573d;

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f574e;

    /* renamed from: f, reason: collision with root package name */
    public final J f575f;

    /* renamed from: g, reason: collision with root package name */
    public final ModernFileAdapter$MODE f576g;

    public L(Context context, ArrayList<File> arrayList, J j7, ModernFileAdapter$MODE modernFileAdapter$MODE) {
        this.f573d = context;
        this.f574e = arrayList;
        this.f575f = j7;
        this.f576g = modernFileAdapter$MODE;
    }

    @Override // m1.V
    public int getItemCount() {
        return this.f574e.size();
    }

    @Override // m1.V
    public void onBindViewHolder(K k7, int i2) {
        File file = (File) this.f574e.get(i2);
        k7.f571v.setText(file.getName());
        boolean isDirectory = file.isDirectory();
        TextView textView = k7.f572w;
        ImageView imageView = k7.f570u;
        if (isDirectory) {
            imageView.setImageResource(R.drawable.folder_24px);
            File[] listFiles = file.listFiles();
            textView.setText((listFiles != null ? listFiles.length : 0) + " items");
        } else {
            ModernFileAdapter$MODE modernFileAdapter$MODE = ModernFileAdapter$MODE.f15789b;
            ModernFileAdapter$MODE modernFileAdapter$MODE2 = this.f576g;
            int i7 = modernFileAdapter$MODE2 == modernFileAdapter$MODE ? R.drawable.video_library_24px : R.drawable.backup_24px;
            if (modernFileAdapter$MODE2 == ModernFileAdapter$MODE.f15791f) {
                i7 = R.drawable.subtitles_24px;
            }
            imageView.setImageResource(i7);
            textView.setText(new SimpleDateFormat("MMM dd, yyyy", Locale.getDefault()).format(new Date(file.lastModified())));
        }
        k7.f18217a.setOnClickListener(new A4.m(8, this, file));
    }

    @Override // m1.V
    public K onCreateViewHolder(ViewGroup viewGroup, int i2) {
        ModernFileAdapter$MODE modernFileAdapter$MODE = ModernFileAdapter$MODE.f15789b;
        ModernFileAdapter$MODE modernFileAdapter$MODE2 = this.f576g;
        int i7 = modernFileAdapter$MODE2 == modernFileAdapter$MODE ? R.layout.item_file_modern : R.layout.item_file_modern_backup;
        if (modernFileAdapter$MODE2 == ModernFileAdapter$MODE.f15791f) {
            i7 = R.layout.item_file_modern_subtitle;
        }
        return new K(LayoutInflater.from(this.f573d).inflate(i7, viewGroup, false));
    }
}
