.class public Lflix/com/vision/models/MySourceArrayList;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lflix/com/vision/models/VideoSource;",
        ">;"
    }
.end annotation


# instance fields
.field listener:LU4/h;

.field public premium_link_count:I

.field streams:Ljava/lang/String;


# direct methods
.method public constructor <init>(LU4/h;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lflix/com/vision/models/MySourceArrayList;->premium_link_count:I

    .line 6
    .line 7
    const-string v0, ""

    .line 8
    .line 9
    iput-object v0, p0, Lflix/com/vision/models/MySourceArrayList;->streams:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p1, p0, Lflix/com/vision/models/MySourceArrayList;->listener:LU4/h;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public declared-synchronized add(ILflix/com/vision/models/VideoSource;)V
    .locals 3

    const-string v0, "http:"

    monitor-enter p0

    if-nez p2, :cond_0

    .line 23
    monitor-exit p0

    return-void

    .line 24
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lflix/com/vision/models/MySourceArrayList;->streams:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lflix/com/vision/models/MySourceArrayList;->streams:Ljava/lang/String;

    .line 25
    invoke-virtual {p2}, Lflix/com/vision/models/VideoSource;->hasMultiSubtitles()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 26
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 27
    :cond_1
    :try_start_1
    iget-object v1, p2, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v2, "//"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p2, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 29
    :cond_2
    invoke-virtual {p2}, Lflix/com/vision/models/VideoSource;->unavailable()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 30
    monitor-exit p0

    return-void

    .line 31
    :cond_3
    :try_start_2
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 32
    iget-boolean p1, p2, Lflix/com/vision/models/VideoSource;->isPremiumize:Z

    if-nez p1, :cond_4

    iget-boolean p1, p2, Lflix/com/vision/models/VideoSource;->isRealDebrid:Z

    if-nez p1, :cond_4

    iget-boolean p1, p2, Lflix/com/vision/models/VideoSource;->isAllDebrid:Z

    if-eqz p1, :cond_5

    .line 33
    :cond_4
    iget p1, p0, Lflix/com/vision/models/MySourceArrayList;->premium_link_count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lflix/com/vision/models/MySourceArrayList;->premium_link_count:I

    .line 34
    :cond_5
    iget-object p1, p0, Lflix/com/vision/models/MySourceArrayList;->listener:LU4/h;

    if-eqz p1, :cond_6

    .line 35
    invoke-interface {p1}, LU4/h;->onAdded()V

    .line 36
    :cond_6
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    monitor-exit p0

    return-void

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lflix/com/vision/models/VideoSource;

    invoke-virtual {p0, p1, p2}, Lflix/com/vision/models/MySourceArrayList;->add(ILflix/com/vision/models/VideoSource;)V

    return-void
.end method

.method public declared-synchronized add(Lflix/com/vision/models/VideoSource;)Z
    .locals 4

    const-string v0, "http:"

    monitor-enter p0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 3
    monitor-exit p0

    return v1

    .line 4
    :cond_0
    :try_start_0
    iget-boolean v2, p1, Lflix/com/vision/models/VideoSource;->streamable:Z

    if-eqz v2, :cond_1

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lflix/com/vision/models/MySourceArrayList;->streams:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lflix/com/vision/models/MySourceArrayList;->streams:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lflix/com/vision/models/VideoSource;->hasMultiSubtitles()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 7
    monitor-exit p0

    return v1

    .line 8
    :cond_2
    :try_start_1
    iget-object v2, p1, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    if-eqz v2, :cond_3

    const-string v3, "//"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 10
    :cond_3
    iget-object v0, p1, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BITPORNO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11
    iget-object v0, p1, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    const-string v2, "BITPORNO"

    const-string v3, "RAPIDVIDEO"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 12
    :cond_4
    invoke-virtual {p1}, Lflix/com/vision/models/VideoSource;->unavailable()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_5

    .line 13
    monitor-exit p0

    return v1

    .line 14
    :cond_5
    :try_start_2
    invoke-virtual {p1}, Lflix/com/vision/models/VideoSource;->topLink()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    .line 15
    invoke-virtual {p0, v1, p1}, Lflix/com/vision/models/MySourceArrayList;->add(ILflix/com/vision/models/VideoSource;)V

    goto :goto_1

    .line 16
    :cond_6
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    iget-boolean v0, p1, Lflix/com/vision/models/VideoSource;->isPremiumize:Z

    if-nez v0, :cond_7

    iget-boolean v0, p1, Lflix/com/vision/models/VideoSource;->isRealDebrid:Z

    if-nez v0, :cond_7

    iget-boolean p1, p1, Lflix/com/vision/models/VideoSource;->isAllDebrid:Z

    if-eqz p1, :cond_8

    .line 18
    :cond_7
    iget p1, p0, Lflix/com/vision/models/MySourceArrayList;->premium_link_count:I

    add-int/2addr p1, v2

    iput p1, p0, Lflix/com/vision/models/MySourceArrayList;->premium_link_count:I

    .line 19
    :cond_8
    :goto_1
    iget-object p1, p0, Lflix/com/vision/models/MySourceArrayList;->listener:LU4/h;

    if-eqz p1, :cond_9

    .line 20
    invoke-interface {p1}, LU4/h;->onAdded()V

    .line 21
    :cond_9
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 22
    monitor-exit p0

    return v2

    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 2
    check-cast p1, Lflix/com/vision/models/VideoSource;

    invoke-virtual {p0, p1}, Lflix/com/vision/models/MySourceArrayList;->add(Lflix/com/vision/models/VideoSource;)Z

    move-result p1

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lflix/com/vision/models/VideoSource;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lflix/com/vision/models/VideoSource;

    .line 16
    .line 17
    invoke-virtual {v0}, Lflix/com/vision/models/VideoSource;->topLink()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {p0, v1, v0}, Lflix/com/vision/models/MySourceArrayList;->add(ILflix/com/vision/models/VideoSource;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p0, v0}, Lflix/com/vision/models/MySourceArrayList;->add(Lflix/com/vision/models/VideoSource;)Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 p1, 0x1

    .line 33
    return p1
.end method
