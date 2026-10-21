.class public interface abstract Lv0/I;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final g:Landroidx/media3/exoplayer/source/chunk/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/media3/exoplayer/source/chunk/a;

    .line 2
    .line 3
    const/16 v1, 0xc

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/source/chunk/a;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lv0/I;->g:Landroidx/media3/exoplayer/source/chunk/a;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public abstract createExtractors()[Lv0/C;
.end method

.method public abstract createExtractors(Landroid/net/Uri;Ljava/util/Map;)[Lv0/C;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)[",
            "Lv0/C;"
        }
    .end annotation
.end method

.method public abstract experimentalSetCodecsToParseWithinGopSampleDependencies(I)Lv0/I;
.end method

.method public abstract experimentalSetTextTrackTranscodingEnabled(Z)Lv0/I;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setSubtitleParserFactory(LS0/q;)Lv0/I;
.end method
