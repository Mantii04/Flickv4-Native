.class public final synthetic Lflix/com/vision/activities/leanback/fragment/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic b:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lflix/com/vision/activities/leanback/fragment/g;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Lflix/com/vision/models/tmdb/Network;

    .line 2
    .line 3
    check-cast p2, Lflix/com/vision/models/tmdb/Network;

    .line 4
    .line 5
    iget p1, p1, Lflix/com/vision/models/tmdb/Network;->id:I

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object v0, p0, Lflix/com/vision/activities/leanback/fragment/g;->b:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iget p2, p2, Lflix/com/vision/models/tmdb/Network;->id:I

    .line 18
    .line 19
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    const v0, 0x7fffffff

    .line 28
    .line 29
    .line 30
    const/4 v1, -0x1

    .line 31
    if-ne p1, v1, :cond_0

    .line 32
    .line 33
    move p1, v0

    .line 34
    :cond_0
    if-ne p2, v1, :cond_1

    .line 35
    .line 36
    move p2, v0

    .line 37
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    return p1
.end method
