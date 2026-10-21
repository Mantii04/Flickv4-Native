.class public final Lflix/com/vision/processors/english/a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lflix/com/vision/processors/english/b;


# direct methods
.method public constructor <init>(Lflix/com/vision/processors/english/b;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lflix/com/vision/processors/english/a;->b:Lflix/com/vision/processors/english/b;

    .line 2
    .line 3
    iput-object p2, p0, Lflix/com/vision/processors/english/a;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lflix/com/vision/processors/english/a;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 5

    .line 2
    iget-object p1, p0, Lflix/com/vision/processors/english/a;->a:Ljava/lang/String;

    :try_start_0
    invoke-static {p1}, Lg6/e;->connect(Ljava/lang/String;)Lg6/d;

    move-result-object v0

    check-cast v0, Lh6/h;

    invoke-virtual {v0}, Lh6/h;->get()Lj6/h;

    move-result-object v0

    .line 3
    const-string v1, "anime_muti_link"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/b;->getElementsByClass(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/b;

    move-result-object v0

    .line 4
    const-string v1, "li"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/b;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lflix/com/vision/processors/english/a;->b:Lflix/com/vision/processors/english/b;

    if-eqz v1, :cond_4

    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/b;

    .line 6
    const-string v3, "a"

    invoke-virtual {v1, v3}, Lorg/jsoup/nodes/b;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/b;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 7
    const-string v4, "data-video"

    invoke-virtual {v3, v4}, Lj6/p;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 8
    const-string v4, ".php?id="

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "class"

    invoke-virtual {v1, v4}, Lj6/p;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "vidcdn"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    const-string v1, "vev."

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    new-instance v1, Lflix/com/vision/models/VideoSource;

    invoke-direct {v1}, Lflix/com/vision/models/VideoSource;-><init>()V

    .line 11
    iput-object v3, v1, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 12
    invoke-virtual {v2, v3}, Lflix/com/vision/processors/english/m;->checkLinkLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    const/4 v3, 0x1

    .line 13
    iput-boolean v3, v1, Lflix/com/vision/models/VideoSource;->external_link:Z

    .line 14
    iget-object v2, v2, Lflix/com/vision/processors/english/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_3

    .line 15
    :cond_3
    :goto_1
    new-instance v1, Lflix/com/vision/extractors/GogoExtractor;

    iget-object v4, v2, Lflix/com/vision/processors/english/b;->a:Landroid/content/Context;

    iget-object v2, v2, Lflix/com/vision/processors/english/m;->callBack:LU4/f;

    invoke-direct {v1, v4, p1, v2}, Lflix/com/vision/extractors/GogoExtractor;-><init>(Landroid/content/Context;Ljava/lang/String;LU4/f;)V

    invoke-virtual {v1, v3}, Lflix/com/vision/extractors/GogoExtractor;->process(Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_4
    iget-object p1, v2, Lflix/com/vision/processors/english/b;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 17
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    iget-object p1, v2, Lflix/com/vision/processors/english/b;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lflix/com/vision/models/VideoSource;

    .line 19
    invoke-virtual {v2, v0}, Lflix/com/vision/processors/english/m;->addLink(Lflix/com/vision/models/VideoSource;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 20
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lflix/com/vision/processors/english/a;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method
