package com.uwetrottmann.trakt5.entities;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class SyncItems {
    public List<SyncEpisode> episodes;
    public List<Long> ids;
    public List<SyncMovie> movies;
    public List<SyncPerson> people;
    public List<SyncShow> shows;

    public SyncItems episodes(SyncEpisode syncEpisode) {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(syncEpisode);
        return episodes(arrayList);
    }

    @Deprecated
    public SyncItems ids(int i2) {
        return ids(i2);
    }

    public SyncItems movies(SyncMovie syncMovie) {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(syncMovie);
        return movies(arrayList);
    }

    public SyncItems people(SyncPerson syncPerson) {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(syncPerson);
        return people(arrayList);
    }

    public SyncItems shows(SyncShow syncShow) {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(syncShow);
        return shows(arrayList);
    }

    public SyncItems ids(long j7) {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(Long.valueOf(j7));
        return ids(arrayList);
    }

    public SyncItems episodes(List<SyncEpisode> list) {
        this.episodes = list;
        return this;
    }

    public SyncItems movies(List<SyncMovie> list) {
        this.movies = list;
        return this;
    }

    public SyncItems people(List<SyncPerson> list) {
        this.people = list;
        return this;
    }

    public SyncItems shows(List<SyncShow> list) {
        this.shows = list;
        return this;
    }

    public SyncItems ids(List<Long> list) {
        this.ids = list;
        return this;
    }
}
