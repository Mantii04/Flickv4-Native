package C4;

import android.app.Activity;
import android.app.FragmentManager;
import android.view.View;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.activities.LinksActivity;
import flix.com.vision.models.Anime;
import flix.com.vision.models.Drama;
import flix.com.vision.models.Movie;
import flix.com.vision.models.tmdb.Network;
import h5.AbstractC0995i;
import l.C1191v1;

/* renamed from: C4.i, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class ViewOnLongClickListenerC0085i implements View.OnLongClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f692b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f693e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f694f;

    public /* synthetic */ ViewOnLongClickListenerC0085i(int i2, Object obj, Object obj2) {
        this.f692b = i2;
        this.f693e = obj;
        this.f694f = obj2;
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        switch (this.f692b) {
            case 0:
                C0087k c0087k = (C0087k) this.f693e;
                C0086j c0086j = (C0086j) this.f694f;
                C1191v1 c1191v1 = new C1191v1(c0087k.f717g, c0086j.f705w);
                Anime anime = c0086j.f703u;
                if (App.getInstance().f14439r.isMovieFavorited_ANIME(anime.toMovie())) {
                    c1191v1.getMenuInflater().inflate(R.menu.context_menu_remove_fav_channels, c1191v1.getMenu());
                } else {
                    c1191v1.getMenuInflater().inflate(R.menu.context_menu_add_fav_channels, c1191v1.getMenu());
                }
                c1191v1.setOnMenuItemClickListener(new C0082f(c0087k, anime, c1191v1, 1));
                c1191v1.show();
                return true;
            case 1:
                C0101z c0101z = (C0101z) this.f693e;
                C0100y c0100y = (C0100y) this.f694f;
                C1191v1 c1191v12 = new C1191v1(c0101z.f802e, c0100y.f797w);
                Drama drama = c0100y.f795u;
                if (App.getInstance().f14439r.isDramaFavorited(drama)) {
                    c1191v12.getMenuInflater().inflate(R.menu.context_menu_remove_fav_channels, c1191v12.getMenu());
                } else {
                    c1191v12.getMenuInflater().inflate(R.menu.context_menu_add_fav_channels, c1191v12.getMenu());
                }
                c1191v12.setOnMenuItemClickListener(new C0099x(c0101z, drama, c0100y, c1191v12));
                c1191v12.show();
                return true;
            case 2:
                ((LinksActivity) ((j0) this.f693e).f713h).linkClicked(((i0) this.f694f).f695u, true);
                return true;
            case 3:
                final W4.b bVar = (W4.b) this.f693e;
                Activity activity = bVar.f4166c;
                FragmentManager fragmentManager = activity.getFragmentManager();
                Q4.d newInstance = Q4.d.newInstance(activity, true);
                final Movie movie = (Movie) this.f694f;
                newInstance.setTitle(movie.getTitle());
                newInstance.setMessage("What would you like to Do?");
                final int i2 = 0;
                newInstance.setButton1("MARK AS WATCHED", new View.OnClickListener() { // from class: W4.a
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        switch (i2) {
                            case 0:
                                b bVar2 = bVar;
                                bVar2.getClass();
                                P4.e eVar = App.getInstance().f14439r;
                                Movie movie2 = movie;
                                eVar.markAsWatched(movie2);
                                AbstractC0995i.makeToast(bVar2.f4166c, "Marked as watched", true);
                                bVar2.f4167d.markAsWatched(movie2);
                                break;
                            case 1:
                                b bVar3 = bVar;
                                bVar3.getClass();
                                App.getInstance().f14439r.addMovieFavorites(movie);
                                AbstractC0995i.makeToast(bVar3.f4166c, "Added to Favorites", true);
                                break;
                            default:
                                b bVar4 = bVar;
                                bVar4.getClass();
                                P4.e eVar2 = App.getInstance().f14439r;
                                Movie movie3 = movie;
                                eVar2.removeFromWaching(movie3);
                                AbstractC0995i.makeToast(bVar4.f4166c, "Removed", true);
                                bVar4.f4167d.markAsWatched(movie3);
                                break;
                        }
                    }
                });
                final int i7 = 1;
                newInstance.setButton2("ADD TO FAVORITES", new View.OnClickListener() { // from class: W4.a
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        switch (i7) {
                            case 0:
                                b bVar2 = bVar;
                                bVar2.getClass();
                                P4.e eVar = App.getInstance().f14439r;
                                Movie movie2 = movie;
                                eVar.markAsWatched(movie2);
                                AbstractC0995i.makeToast(bVar2.f4166c, "Marked as watched", true);
                                bVar2.f4167d.markAsWatched(movie2);
                                break;
                            case 1:
                                b bVar3 = bVar;
                                bVar3.getClass();
                                App.getInstance().f14439r.addMovieFavorites(movie);
                                AbstractC0995i.makeToast(bVar3.f4166c, "Added to Favorites", true);
                                break;
                            default:
                                b bVar4 = bVar;
                                bVar4.getClass();
                                P4.e eVar2 = App.getInstance().f14439r;
                                Movie movie3 = movie;
                                eVar2.removeFromWaching(movie3);
                                AbstractC0995i.makeToast(bVar4.f4166c, "Removed", true);
                                bVar4.f4167d.markAsWatched(movie3);
                                break;
                        }
                    }
                });
                final int i8 = 2;
                newInstance.setButton3("REMOVE", new View.OnClickListener() { // from class: W4.a
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        switch (i8) {
                            case 0:
                                b bVar2 = bVar;
                                bVar2.getClass();
                                P4.e eVar = App.getInstance().f14439r;
                                Movie movie2 = movie;
                                eVar.markAsWatched(movie2);
                                AbstractC0995i.makeToast(bVar2.f4166c, "Marked as watched", true);
                                bVar2.f4167d.markAsWatched(movie2);
                                break;
                            case 1:
                                b bVar3 = bVar;
                                bVar3.getClass();
                                App.getInstance().f14439r.addMovieFavorites(movie);
                                AbstractC0995i.makeToast(bVar3.f4166c, "Added to Favorites", true);
                                break;
                            default:
                                b bVar4 = bVar;
                                bVar4.getClass();
                                P4.e eVar2 = App.getInstance().f14439r;
                                Movie movie3 = movie;
                                eVar2.removeFromWaching(movie3);
                                AbstractC0995i.makeToast(bVar4.f4166c, "Removed", true);
                                bVar4.f4167d.markAsWatched(movie3);
                                break;
                        }
                    }
                });
                try {
                    newInstance.show(fragmentManager, "");
                    return false;
                } catch (Exception e3) {
                    e3.printStackTrace();
                    return false;
                }
            default:
                W4.c cVar = ((W4.e) this.f693e).f4173a;
                if (cVar == null) {
                    return true;
                }
                cVar.onNetworkLongClicked((Network) this.f694f);
                return true;
        }
    }
}
