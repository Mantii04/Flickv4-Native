.class Lflix/com/vision/extractors/CloudnestraExtractor$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflix/com/vision/extractors/CloudnestraExtractor;->fetchLinks(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lflix/com/vision/models/VideoSource;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lflix/com/vision/extractors/CloudnestraExtractor;

.field final synthetic val$episode:Ljava/lang/String;

.field final synthetic val$externalId:Ljava/lang/String;

.field final synthetic val$isMovie:Z

.field final synthetic val$season:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lflix/com/vision/extractors/CloudnestraExtractor;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lflix/com/vision/extractors/CloudnestraExtractor$1;->this$0:Lflix/com/vision/extractors/CloudnestraExtractor;

    .line 2
    .line 3
    iput-boolean p2, p0, Lflix/com/vision/extractors/CloudnestraExtractor$1;->val$isMovie:Z

    .line 4
    .line 5
    iput-object p3, p0, Lflix/com/vision/extractors/CloudnestraExtractor$1;->val$externalId:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lflix/com/vision/extractors/CloudnestraExtractor$1;->val$season:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lflix/com/vision/extractors/CloudnestraExtractor$1;->val$episode:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Lflix/com/vision/models/VideoSource;
    .locals 14

    .line 2
    const-string p1, "CloudnestraExtractor"

    const-string v0, "https:"

    const-string v1, "https://vsembed.ru/embed/tv/"

    const-string v2, "https://vsembed.ru/embed/movie/"

    const/4 v3, 0x0

    :try_start_0
    iget-boolean v4, p0, Lflix/com/vision/extractors/CloudnestraExtractor$1;->val$isMovie:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "/"

    if-eqz v4, :cond_0

    .line 3
    :try_start_1
    iget-object v1, p0, Lflix/com/vision/extractors/CloudnestraExtractor$1;->val$externalId:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_6

    .line 4
    :cond_0
    iget-object v2, p0, Lflix/com/vision/extractors/CloudnestraExtractor$1;->val$externalId:Ljava/lang/String;

    iget-object v4, p0, Lflix/com/vision/extractors/CloudnestraExtractor$1;->val$season:Ljava/lang/String;

    iget-object v6, p0, Lflix/com/vision/extractors/CloudnestraExtractor$1;->val$episode:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    :goto_0
    iget-object v2, p0, Lflix/com/vision/extractors/CloudnestraExtractor$1;->this$0:Lflix/com/vision/extractors/CloudnestraExtractor;

    invoke-static {v2}, Lflix/com/vision/extractors/CloudnestraExtractor;->access$000(Lflix/com/vision/extractors/CloudnestraExtractor;)Ljava/util/Map;

    move-result-object v2

    .line 6
    iget-object v4, p0, Lflix/com/vision/extractors/CloudnestraExtractor$1;->this$0:Lflix/com/vision/extractors/CloudnestraExtractor;

    invoke-static {v4, v1, v2}, Lflix/com/vision/extractors/CloudnestraExtractor;->access$100(Lflix/com/vision/extractors/CloudnestraExtractor;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v3

    .line 7
    :cond_1
    invoke-static {v1}, Lg6/e;->parse(Ljava/lang/String;)Lj6/h;

    move-result-object v2

    .line 8
    const-string v4, "iframe"

    invoke-virtual {v2, v4}, Lorg/jsoup/nodes/b;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/b;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 9
    const-string v4, "src"

    invoke-virtual {v2, v4}, Lj6/p;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 10
    const-string v4, "//"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 11
    :cond_2
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 12
    iget-object v2, p0, Lflix/com/vision/extractors/CloudnestraExtractor$1;->this$0:Lflix/com/vision/extractors/CloudnestraExtractor;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "://"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lflix/com/vision/extractors/CloudnestraExtractor;->access$202(Lflix/com/vision/extractors/CloudnestraExtractor;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    :cond_3
    const-string v0, "<!--([\\s\\S]*?)-->"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 14
    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 15
    :cond_4
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 17
    const-string v4, "serversList"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 18
    invoke-static {v2}, Lg6/e;->parse(Ljava/lang/String;)Lj6/h;

    move-result-object v2

    .line 19
    const-string v4, ".server"

    invoke-virtual {v2, v4}, Lorg/jsoup/nodes/b;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v2

    .line 20
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jsoup/nodes/b;

    .line 21
    const-string v6, "data-hash"

    invoke-virtual {v4, v6}, Lj6/p;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 22
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_1

    .line 23
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found hash in comment: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lflix/com/vision/extractors/CloudnestraExtractor$1;->this$0:Lflix/com/vision/extractors/CloudnestraExtractor;

    invoke-static {v7}, Lflix/com/vision/extractors/CloudnestraExtractor;->access$200(Lflix/com/vision/extractors/CloudnestraExtractor;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/rcp/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 25
    iget-object v6, p0, Lflix/com/vision/extractors/CloudnestraExtractor$1;->this$0:Lflix/com/vision/extractors/CloudnestraExtractor;

    invoke-static {v6}, Lflix/com/vision/extractors/CloudnestraExtractor;->access$000(Lflix/com/vision/extractors/CloudnestraExtractor;)Ljava/util/Map;

    move-result-object v6

    .line 26
    const-string v7, "Sec-Fetch-Dest"

    const-string v8, ""

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v7, p0, Lflix/com/vision/extractors/CloudnestraExtractor$1;->this$0:Lflix/com/vision/extractors/CloudnestraExtractor;

    invoke-static {v7, v4, v6}, Lflix/com/vision/extractors/CloudnestraExtractor;->access$100(Lflix/com/vision/extractors/CloudnestraExtractor;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    .line 28
    iget-object v6, p0, Lflix/com/vision/extractors/CloudnestraExtractor$1;->this$0:Lflix/com/vision/extractors/CloudnestraExtractor;

    const-string v7, "src:\\s*\'([^\']*)\'"

    invoke-static {v6, v4, v7}, Lflix/com/vision/extractors/CloudnestraExtractor;->access$300(Lflix/com/vision/extractors/CloudnestraExtractor;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 29
    const-string v6, "/prorcp/"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 30
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lflix/com/vision/extractors/CloudnestraExtractor$1;->this$0:Lflix/com/vision/extractors/CloudnestraExtractor;

    invoke-static {v7}, Lflix/com/vision/extractors/CloudnestraExtractor;->access$200(Lflix/com/vision/extractors/CloudnestraExtractor;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 31
    iget-object v6, p0, Lflix/com/vision/extractors/CloudnestraExtractor$1;->this$0:Lflix/com/vision/extractors/CloudnestraExtractor;

    invoke-static {v6}, Lflix/com/vision/extractors/CloudnestraExtractor;->access$000(Lflix/com/vision/extractors/CloudnestraExtractor;)Ljava/util/Map;

    move-result-object v7

    invoke-static {v6, v4, v7}, Lflix/com/vision/extractors/CloudnestraExtractor;->access$100(Lflix/com/vision/extractors/CloudnestraExtractor;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 32
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 33
    const-string v7, "(?:var\\s+)?(\\w+)\\s*=\\s*[\"\']([^\"\']*)[\"\']"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 34
    invoke-virtual {v7, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 35
    :goto_2
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 36
    invoke-virtual {v7, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v7, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 37
    :cond_7
    const-string v7, "v1"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 38
    iget-object v7, p0, Lflix/com/vision/extractors/CloudnestraExtractor$1;->this$0:Lflix/com/vision/extractors/CloudnestraExtractor;

    invoke-static {v7}, Lflix/com/vision/extractors/CloudnestraExtractor;->access$200(Lflix/com/vision/extractors/CloudnestraExtractor;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 39
    invoke-virtual {v7}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v7

    move v8, v1

    :goto_3
    const/4 v9, 0x5

    if-gt v8, v9, :cond_8

    .line 40
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "v"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 41
    :cond_8
    iget-object v7, p0, Lflix/com/vision/extractors/CloudnestraExtractor$1;->this$0:Lflix/com/vision/extractors/CloudnestraExtractor;

    const-string v8, "file\\s*:\\s*[\"\']([^\"\']+)[\"\']"

    invoke-static {v7, v4, v8}, Lflix/com/vision/extractors/CloudnestraExtractor;->access$300(Lflix/com/vision/extractors/CloudnestraExtractor;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 42
    const-string v7, " or "

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 43
    array-length v7, v4

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v7, :cond_5

    aget-object v9, v4, v8

    .line 44
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 45
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 46
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "{"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "}"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    invoke-virtual {v9, v12, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    goto :goto_5

    .line 47
    :cond_9
    const-string v10, "http"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 48
    new-instance v0, Lflix/com/vision/models/VideoSource;

    invoke-direct {v0}, Lflix/com/vision/models/VideoSource;-><init>()V

    .line 49
    iput-object v9, v0, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 50
    const-string v2, "1080p - [FVSTREAM 4] \u00b7 [DIRECT] \u00b7 English"

    iput-object v2, v0, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 51
    iput-boolean v1, v0, Lflix/com/vision/models/VideoSource;->streamable:Z

    const/16 v1, 0x438

    .line 52
    iput v1, v0, Lflix/com/vision/models/VideoSource;->quality:I

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lflix/com/vision/extractors/CloudnestraExtractor$1;->this$0:Lflix/com/vision/extractors/CloudnestraExtractor;

    invoke-static {v2}, Lflix/com/vision/extractors/CloudnestraExtractor;->access$200(Lflix/com/vision/extractors/CloudnestraExtractor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lflix/com/vision/models/VideoSource;->referer:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 54
    :goto_6
    const-string v1, "Extraction error"

    invoke-static {p1, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b
    return-object v3
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lflix/com/vision/extractors/CloudnestraExtractor$1;->doInBackground([Ljava/lang/Void;)Lflix/com/vision/models/VideoSource;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Lflix/com/vision/models/VideoSource;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lflix/com/vision/extractors/CloudnestraExtractor$1;->this$0:Lflix/com/vision/extractors/CloudnestraExtractor;

    invoke-static {v0}, Lflix/com/vision/extractors/CloudnestraExtractor;->access$400(Lflix/com/vision/extractors/CloudnestraExtractor;)LU4/f;

    move-result-object v0

    invoke-interface {v0, p1}, LU4/f;->OnSuccess(Lflix/com/vision/models/VideoSource;)V

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lflix/com/vision/extractors/CloudnestraExtractor$1;->this$0:Lflix/com/vision/extractors/CloudnestraExtractor;

    invoke-static {p1}, Lflix/com/vision/extractors/CloudnestraExtractor;->access$400(Lflix/com/vision/extractors/CloudnestraExtractor;)LU4/f;

    move-result-object p1

    invoke-interface {p1}, LU4/f;->OnError()V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lflix/com/vision/models/VideoSource;

    invoke-virtual {p0, p1}, Lflix/com/vision/extractors/CloudnestraExtractor$1;->onPostExecute(Lflix/com/vision/models/VideoSource;)V

    return-void
.end method
