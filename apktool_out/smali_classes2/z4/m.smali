.class public final Lz4/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lflix/com/vision/materialsearchview/MaterialSearchView$OnQueryTextListener;


# instance fields
.field public final synthetic a:Lflix/com/vision/activities/adult/AdultVideosSearchActivity;


# direct methods
.method public constructor <init>(Lflix/com/vision/activities/adult/AdultVideosSearchActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lz4/m;->a:Lflix/com/vision/activities/adult/AdultVideosSearchActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lz4/m;->a:Lflix/com/vision/activities/adult/AdultVideosSearchActivity;

    .line 11
    .line 12
    invoke-virtual {v0}, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->f()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Le/v;->getSupportActionBar()Le/b;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v3, "Results for \""

    .line 22
    .line 23
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v3, "\""

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v1, v2}, Le/b;->setTitle(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    iget-object v1, v0, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->m:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 44
    .line 45
    .line 46
    iget-object v1, v0, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->p:LC4/h;

    .line 47
    .line 48
    invoke-virtual {v1}, Lm1/V;->notifyDataSetChanged()V

    .line 49
    .line 50
    .line 51
    iput-object p1, v0, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->t:Ljava/lang/String;

    .line 52
    .line 53
    iget p1, v0, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->s:I

    .line 54
    .line 55
    invoke-virtual {v0, p1}, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->getVideos(I)V

    .line 56
    .line 57
    .line 58
    :cond_0
    const/4 p1, 0x0

    .line 59
    return p1
.end method
