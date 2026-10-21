package com.uwetrottmann.trakt5;

import A.i;

/* loaded from: classes2.dex */
public class TraktLink {
    private static final String PATH_EPISODES = "/episodes/";
    private static final String PATH_SEASONS = "/seasons/";
    private static final String URL_COMMENT = "https://trakt.tv/comments/";
    private static final String URL_EPISODE = "https://trakt.tv/episodes/";
    private static final String URL_IMDB = "https://trakt.tv/search/imdb/";
    private static final String URL_MOVIE = "https://trakt.tv/movies/";
    private static final String URL_PERSON = "https://trakt.tv/people/";
    private static final String URL_SEASON = "https://trakt.tv/seasons/";
    private static final String URL_SHOW = "https://trakt.tv/shows/";
    private static final String URL_TMDB = "https://trakt.tv/search/tmdb/";
    private static final String URL_TVDB = "https://trakt.tv/search/tvdb/";
    private static final String URL_TVRAGE = "https://trakt.tv/search/tvrage/";

    public static String comment(int i2) {
        return i.f(i2, URL_COMMENT);
    }

    public static String episode(int i2) {
        return i.f(i2, URL_EPISODE);
    }

    public static String imdb(String str) {
        return i.k(URL_IMDB, str);
    }

    public static String movie(String str) {
        return i.k(URL_MOVIE, str);
    }

    public static String person(String str) {
        return i.k(URL_PERSON, str);
    }

    public static String season(int i2) {
        return i.f(i2, URL_SEASON);
    }

    public static String show(String str) {
        return i.k(URL_SHOW, str);
    }

    public static String tmdb(int i2) {
        return i.f(i2, URL_TMDB);
    }

    public static String tvdb(int i2) {
        return i.f(i2, URL_TVDB);
    }

    public static String tvrage(int i2) {
        return i.f(i2, URL_TVRAGE);
    }

    public static String episode(int i2, int i7, int i8) {
        return show(String.valueOf(i2)) + PATH_SEASONS + i7 + PATH_EPISODES + i8;
    }

    public static String season(int i2, int i7) {
        return show(String.valueOf(i2)) + PATH_SEASONS + i7;
    }
}
