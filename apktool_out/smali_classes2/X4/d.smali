.class public final LX4/d;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:LX4/e;


# direct methods
.method public constructor <init>(LX4/e;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, LX4/d;->b:LX4/e;

    .line 2
    .line 3
    iput-object p2, p0, LX4/d;->a:Ljava/lang/String;

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

    invoke-virtual {p0, p1}, LX4/d;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 8

    .line 2
    const-string p1, "a"

    :try_start_0
    iget-object v0, p0, LX4/d;->a:Ljava/lang/String;

    invoke-static {v0}, Lg6/e;->connect(Ljava/lang/String;)Lg6/d;

    move-result-object v0

    check-cast v0, Lh6/h;

    invoke-virtual {v0}, Lh6/h;->get()Lj6/h;

    move-result-object v0

    .line 3
    const-string v1, "content"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/b;->getElementById(Ljava/lang/String;)Lorg/jsoup/nodes/b;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 4
    iget-object v1, p0, LX4/d;->b:LX4/e;

    if-eqz v0, :cond_6

    .line 5
    :try_start_1
    const-string v2, "DIV"

    invoke-virtual {v0, v2}, Lorg/jsoup/nodes/b;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/b;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 7
    :try_start_2
    const-string v3, "data-id"

    invoke-virtual {v2, v3}, Lj6/p;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 8
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v2, p1}, Lorg/jsoup/nodes/b;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/b;

    move-result-object v3

    .line 10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://xvideos.com"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "href"

    invoke-virtual {v3, v5}, Lj6/p;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 11
    const-string v4, "img"

    invoke-virtual {v2, v4}, Lorg/jsoup/nodes/b;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/b;

    move-result-object v4

    .line 12
    const-string v5, "data-src"

    invoke-virtual {v4, v5}, Lj6/p;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 13
    const-string v5, "div[class^=thumb-under]"

    invoke-virtual {v2, v5}, Lorg/jsoup/nodes/b;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/b;

    move-result-object v5

    .line 14
    invoke-virtual {v5, p1}, Lorg/jsoup/nodes/b;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/b;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jsoup/nodes/b;->text()Ljava/lang/String;

    move-result-object v5

    .line 15
    new-instance v6, Lflix/com/vision/models/adult/AdultVideo;

    invoke-direct {v6}, Lflix/com/vision/models/adult/AdultVideo;-><init>()V

    .line 16
    const-string v7, "span[class^=video-sd-mark]"

    invoke-virtual {v2, v7}, Lorg/jsoup/nodes/b;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v7

    invoke-virtual {v7}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/b;

    move-result-object v7

    if-nez v7, :cond_2

    .line 17
    const-string v7, "span[class^=video-hd-mark]"

    invoke-virtual {v2, v7}, Lorg/jsoup/nodes/b;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v7

    invoke-virtual {v7}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/b;

    move-result-object v7

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_2

    :cond_2
    :goto_1
    if-eqz v7, :cond_3

    .line 18
    invoke-virtual {v7}, Lorg/jsoup/nodes/b;->text()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lflix/com/vision/models/adult/AdultVideo;->resolution:Ljava/lang/String;

    .line 19
    :cond_3
    const-string v7, "span[class^=duration]"

    invoke-virtual {v2, v7}, Lorg/jsoup/nodes/b;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/b;

    move-result-object v2

    .line 20
    iput-object v5, v6, Lflix/com/vision/models/adult/AdultVideo;->title:Ljava/lang/String;

    .line 21
    iput-object v4, v6, Lflix/com/vision/models/adult/AdultVideo;->img_url:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 22
    invoke-virtual {v2}, Lorg/jsoup/nodes/b;->text()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lflix/com/vision/models/adult/AdultVideo;->duration:Ljava/lang/String;

    .line 23
    :cond_4
    iput-object v3, v6, Lflix/com/vision/models/adult/AdultVideo;->url:Ljava/lang/String;

    .line 24
    iget-object v2, v6, Lflix/com/vision/models/adult/AdultVideo;->duration:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 25
    iget-object v2, v6, Lflix/com/vision/models/adult/AdultVideo;->title:Ljava/lang/String;

    iget-object v3, v6, Lflix/com/vision/models/adult/AdultVideo;->duration:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lflix/com/vision/models/adult/AdultVideo;->title:Ljava/lang/String;

    .line 26
    :cond_5
    iget-object v2, v1, LX4/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 27
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :catch_1
    move-exception p1

    goto :goto_3

    .line 28
    :cond_6
    iget-object p1, v1, LX4/e;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_7

    .line 29
    iget-object p1, v1, LX4/e;->b:LU4/c;

    iget-object v0, v1, LX4/e;->a:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, LU4/c;->OnVideoListSuccess(Ljava/util/ArrayList;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    .line 30
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    :goto_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, LX4/d;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method
