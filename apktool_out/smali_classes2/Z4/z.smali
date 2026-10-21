.class public final LZ4/z;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:LZ4/D;


# direct methods
.method public constructor <init>(LZ4/D;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, LZ4/z;->b:LZ4/D;

    .line 2
    .line 3
    iput-object p2, p0, LZ4/z;->a:Ljava/lang/String;

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

    invoke-virtual {p0, p1}, LZ4/z;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 6

    .line 2
    iget-object p1, p0, LZ4/z;->b:LZ4/D;

    const-string v0, "Checking your browser before accessing"

    const-string v1, "Checking if the site connection is secure"

    iget-object v2, p0, LZ4/z;->a:Ljava/lang/String;

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v2}, Lg6/e;->connect(Ljava/lang/String;)Lg6/d;

    move-result-object v4

    check-cast v4, Lh6/h;

    const/16 v5, 0x1388

    invoke-virtual {v4, v5}, Lh6/h;->timeout(I)Lg6/d;

    move-result-object v4

    check-cast v4, Lh6/h;

    invoke-virtual {v4}, Lh6/h;->get()Lj6/h;

    move-result-object v4

    .line 3
    invoke-virtual {v4}, Lorg/jsoup/nodes/b;->html()Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1, v4, v3}, LZ4/D;->e(Ljava/lang/String;Z)V

    goto :goto_3

    .line 6
    :cond_1
    :goto_0
    new-instance v4, LZ4/A;

    invoke-direct {v4}, LZ4/A;-><init>()V

    .line 7
    iput-object v2, v4, LZ4/A;->a:Ljava/lang/String;

    .line 8
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 9
    :catch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    :try_start_1
    invoke-static {v2, v2}, Lflix/com/vision/App;->get(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {p1, v4, v3}, LZ4/D;->e(Ljava/lang/String;Z)V

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_2

    .line 13
    :cond_3
    :goto_1
    new-instance p1, LZ4/A;

    invoke-direct {p1}, LZ4/A;-><init>()V

    .line 14
    iput-object v2, p1, LZ4/A;->a:Ljava/lang/String;

    .line 15
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 16
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 17
    new-instance p1, LZ4/A;

    invoke-direct {p1}, LZ4/A;-><init>()V

    .line 18
    iput-object v2, p1, LZ4/A;->a:Ljava/lang/String;

    .line 19
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :goto_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, LZ4/z;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method
