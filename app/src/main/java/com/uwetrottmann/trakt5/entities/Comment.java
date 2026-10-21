package com.uwetrottmann.trakt5.entities;

import org.threeten.bp.OffsetDateTime;

/* loaded from: classes2.dex */
public class Comment {
    public String comment;
    public OffsetDateTime created_at;
    public Episode episode;
    public Integer id;
    public Integer likes;
    public Movie movie;
    public Integer parent_id;
    public Integer replies;
    public Boolean review;
    public Show show;
    public Boolean spoiler;
    public OffsetDateTime updated_at;
    public User user;
    public Integer user_rating;

    public Comment() {
    }

    public Comment(Movie movie, String str, boolean z6, boolean z7) {
        this(str, z6, z7);
        this.movie = movie;
    }

    public Comment(Show show, String str, boolean z6, boolean z7) {
        this(str, z6, z7);
        this.show = show;
    }

    public Comment(Episode episode, String str, boolean z6, boolean z7) {
        this(str, z6, z7);
        this.episode = episode;
    }

    public Comment(String str, boolean z6, boolean z7) {
        this.comment = str;
        this.spoiler = Boolean.valueOf(z6);
        this.review = Boolean.valueOf(z7);
    }
}
