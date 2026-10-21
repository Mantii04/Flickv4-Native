.class public abstract Ll6/X;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static select(Ljava/lang/String;Lorg/jsoup/nodes/b;)Lorg/jsoup/select/Elements;
    .locals 0

    .line 1
    invoke-static {p0}, Lh6/k;->notEmpty(Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Ll6/W;->parse(Ljava/lang/String;)Ll6/S;

    move-result-object p0

    invoke-static {p0, p1}, Ll6/X;->select(Ll6/S;Lorg/jsoup/nodes/b;)Lorg/jsoup/select/Elements;

    move-result-object p0

    return-object p0
.end method

.method public static select(Ll6/S;Lorg/jsoup/nodes/b;)Lorg/jsoup/select/Elements;
    .locals 0

    .line 3
    invoke-static {p0}, Lh6/k;->notNull(Ljava/lang/Object;)V

    .line 4
    invoke-static {p1}, Lh6/k;->notNull(Ljava/lang/Object;)V

    .line 5
    invoke-static {p0, p1}, Ll6/c;->collect(Ll6/S;Lorg/jsoup/nodes/b;)Lorg/jsoup/select/Elements;

    move-result-object p0

    return-object p0
.end method

.method public static selectFirst(Ljava/lang/String;Lorg/jsoup/nodes/b;)Lorg/jsoup/nodes/b;
    .locals 0

    .line 1
    invoke-static {p0}, Lh6/k;->notEmpty(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Ll6/W;->parse(Ljava/lang/String;)Ll6/S;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-static {p0, p1}, Ll6/c;->findFirst(Ll6/S;Lorg/jsoup/nodes/b;)Lorg/jsoup/nodes/b;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method
