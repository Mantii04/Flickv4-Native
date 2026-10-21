package C4;

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import flix.com.vision.R;
import flix.com.vision.models.torrent.UserTorrent;
import flix.com.vision.processors.english.BaseProcessor$TorrentServiceType;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public final class h0 extends m1.V {

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f690d;

    /* renamed from: e, reason: collision with root package name */
    public final Activity f691e;

    public h0(Activity activity, ArrayList<UserTorrent> arrayList) {
        this.f690d = arrayList;
        this.f691e = activity;
    }

    @Override // m1.V
    public int getItemCount() {
        return this.f690d.size();
    }

    @Override // m1.V
    public void onBindViewHolder(g0 g0Var, int i2) {
        UserTorrent userTorrent = (UserTorrent) this.f690d.get(i2);
        g0Var.f682u = userTorrent;
        boolean z6 = userTorrent.clicked;
        TextView textView = g0Var.f684w;
        TextView textView2 = g0Var.f685x;
        if (z6) {
            textView2.setAlpha(0.4f);
            textView.setAlpha(0.4f);
        } else {
            textView2.setAlpha(1.0f);
            textView.setAlpha(1.0f);
        }
        BaseProcessor$TorrentServiceType baseProcessor$TorrentServiceType = g0Var.f682u.source_type;
        BaseProcessor$TorrentServiceType baseProcessor$TorrentServiceType2 = BaseProcessor$TorrentServiceType.f16067e;
        Activity activity = this.f691e;
        TextView textView3 = g0Var.f686y;
        if (baseProcessor$TorrentServiceType == baseProcessor$TorrentServiceType2) {
            textView2.setText("File ID: " + g0Var.f682u.file_id + " - " + g0Var.f682u.file_size_label);
            StringBuilder sb = new StringBuilder("PREMIUMIZE - ");
            sb.append(g0Var.f682u.status);
            textView3.setText(sb.toString());
            String str = g0Var.f682u.status;
            if (str == null || !str.equals("finished")) {
                textView3.setTextColor(activity.getResources().getColor(R.color.md_red_500));
            } else {
                textView3.setTextColor(activity.getResources().getColor(R.color.md_green_500));
            }
        } else if (baseProcessor$TorrentServiceType == BaseProcessor$TorrentServiceType.f16068f) {
            textView2.setText("File ID: " + g0Var.f682u.file_id + " - " + g0Var.f682u.file_size_label);
            StringBuilder sb2 = new StringBuilder("ALLDEBRID - ");
            sb2.append(g0Var.f682u.status);
            textView3.setText(sb2.toString());
            String str2 = g0Var.f682u.status;
            if (str2 == null || !str2.equals("Ready")) {
                textView3.setTextColor(activity.getResources().getColor(R.color.md_red_500));
            } else {
                textView3.setTextColor(activity.getResources().getColor(R.color.md_green_500));
            }
        } else if (baseProcessor$TorrentServiceType == BaseProcessor$TorrentServiceType.f16066b) {
            textView3.setText("REAL-DEBRID");
            textView3.setTextColor(activity.getResources().getColor(R.color.md_green_500));
            textView2.setText("File ID: " + g0Var.f682u.file_id + " - " + g0Var.f682u.file_size_label);
            StringBuilder sb3 = new StringBuilder("REAL-DEBRID - ");
            sb3.append(g0Var.f682u.status);
            textView3.setText(sb3.toString());
            String str3 = g0Var.f682u.status;
            if (str3 == null || !str3.contains("error")) {
                textView3.setTextColor(activity.getResources().getColor(R.color.md_green_500));
            } else {
                textView3.setTextColor(activity.getResources().getColor(R.color.md_red_500));
            }
        } else if (baseProcessor$TorrentServiceType == BaseProcessor$TorrentServiceType.f16069j) {
            textView3.setText("TORBOX");
            textView3.setTextColor(activity.getResources().getColor(R.color.md_green_500));
            textView2.setText("File ID: " + g0Var.f682u.file_id + " - " + g0Var.f682u.file_size_label);
            StringBuilder sb4 = new StringBuilder("TORBOX - ");
            sb4.append(g0Var.f682u.status);
            textView3.setText(sb4.toString());
            String str4 = g0Var.f682u.status;
            if (str4 == null || !str4.contains("error")) {
                textView3.setTextColor(activity.getResources().getColor(R.color.md_green_500));
            } else {
                textView3.setTextColor(activity.getResources().getColor(R.color.md_red_500));
            }
        }
        textView2.setTextColor(-416706);
        if (g0Var.f682u == null) {
            return;
        }
        ViewOnFocusChangeListenerC0078b viewOnFocusChangeListenerC0078b = new ViewOnFocusChangeListenerC0078b(this, g0Var, 11);
        View view = g0Var.f683v;
        view.setOnFocusChangeListener(viewOnFocusChangeListenerC0078b);
        textView.setText(g0Var.f682u.filename);
        view.setOnClickListener(new A4.m(13, this, g0Var));
        view.setOnLongClickListener(new f0());
    }

    @Override // m1.V
    public g0 onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new g0(this, LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.user_torrent_item_view_new, viewGroup, false));
    }
}
