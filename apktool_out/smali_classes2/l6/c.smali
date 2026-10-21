.class public abstract Ll6/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static collect(Ll6/S;Lorg/jsoup/nodes/b;)Lorg/jsoup/select/Elements;
    .locals 2

    .line 1
    new-instance v0, Lorg/jsoup/select/Elements;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/jsoup/select/Elements;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ll6/a;

    .line 7
    .line 8
    invoke-direct {v1, p1, v0, p0}, Ll6/a;-><init>(Lorg/jsoup/nodes/b;Lorg/jsoup/select/Elements;Ll6/S;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v1, p1}, Ll6/U;->traverse(Ll6/V;Lj6/p;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public static findFirst(Ll6/S;Lorg/jsoup/nodes/b;)Lorg/jsoup/nodes/b;
    .locals 1

    .line 1
    new-instance v0, Ll6/b;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Ll6/b;-><init>(Ll6/S;Lorg/jsoup/nodes/b;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0, p1}, Ll6/U;->filter(Ll6/T;Lj6/p;)Lorg/jsoup/select/NodeFilter$FilterResult;

    .line 7
    .line 8
    .line 9
    iget-object p0, v0, Ll6/b;->b:Lorg/jsoup/nodes/b;

    .line 10
    .line 11
    return-object p0
.end method
