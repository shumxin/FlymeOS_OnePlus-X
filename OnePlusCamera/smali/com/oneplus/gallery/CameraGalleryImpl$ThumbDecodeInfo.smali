.class final Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
.super Ljava/lang/Object;
.source "CameraGalleryImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/CameraGalleryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ThumbDecodeInfo"
.end annotation


# instance fields
.field public decodingHandle:Lcom/oneplus/base/Handle;

.field public filePath:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/gallery/CameraGalleryImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl$1;

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;-><init>()V

    return-void
.end method
