.class Lcom/meizu/media/camera/io/FileManagerImpl$BitmapArgs;
.super Ljava/lang/Object;
.source "FileManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/camera/io/FileManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapArgs"
.end annotation


# instance fields
.field private mHeight:I

.field private m_Path:Ljava/lang/String;

.field private m_Position:I

.field private m_Width:I

.field private m_callback:Lcom/meizu/media/camera/io/FileManager$PhotoCallback;

.field final synthetic this$0:Lcom/meizu/media/camera/io/FileManagerImpl;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/io/FileManagerImpl;ILjava/lang/String;IILcom/meizu/media/camera/io/FileManager$PhotoCallback;)V
    .locals 0
    .param p2, "position"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "callback"    # Lcom/meizu/media/camera/io/FileManager$PhotoCallback;

    .prologue
    .line 362
    iput-object p1, p0, Lcom/meizu/media/camera/io/FileManagerImpl$BitmapArgs;->this$0:Lcom/meizu/media/camera/io/FileManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    iput p2, p0, Lcom/meizu/media/camera/io/FileManagerImpl$BitmapArgs;->m_Position:I

    .line 364
    iput-object p3, p0, Lcom/meizu/media/camera/io/FileManagerImpl$BitmapArgs;->m_Path:Ljava/lang/String;

    .line 365
    iput p4, p0, Lcom/meizu/media/camera/io/FileManagerImpl$BitmapArgs;->m_Width:I

    .line 366
    iput p5, p0, Lcom/meizu/media/camera/io/FileManagerImpl$BitmapArgs;->mHeight:I

    .line 367
    iput-object p6, p0, Lcom/meizu/media/camera/io/FileManagerImpl$BitmapArgs;->m_callback:Lcom/meizu/media/camera/io/FileManager$PhotoCallback;

    .line 369
    return-void
.end method

.method static synthetic access$2300(Lcom/meizu/media/camera/io/FileManagerImpl$BitmapArgs;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/io/FileManagerImpl$BitmapArgs;

    .prologue
    .line 357
    iget-object v0, p0, Lcom/meizu/media/camera/io/FileManagerImpl$BitmapArgs;->m_Path:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/meizu/media/camera/io/FileManagerImpl$BitmapArgs;)Lcom/meizu/media/camera/io/FileManager$PhotoCallback;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/io/FileManagerImpl$BitmapArgs;

    .prologue
    .line 357
    iget-object v0, p0, Lcom/meizu/media/camera/io/FileManagerImpl$BitmapArgs;->m_callback:Lcom/meizu/media/camera/io/FileManager$PhotoCallback;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/meizu/media/camera/io/FileManagerImpl$BitmapArgs;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/io/FileManagerImpl$BitmapArgs;

    .prologue
    .line 357
    iget v0, p0, Lcom/meizu/media/camera/io/FileManagerImpl$BitmapArgs;->m_Position:I

    return v0
.end method

.method static synthetic access$2600(Lcom/meizu/media/camera/io/FileManagerImpl$BitmapArgs;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/io/FileManagerImpl$BitmapArgs;

    .prologue
    .line 357
    iget v0, p0, Lcom/meizu/media/camera/io/FileManagerImpl$BitmapArgs;->m_Width:I

    return v0
.end method

.method static synthetic access$2700(Lcom/meizu/media/camera/io/FileManagerImpl$BitmapArgs;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/io/FileManagerImpl$BitmapArgs;

    .prologue
    .line 357
    iget v0, p0, Lcom/meizu/media/camera/io/FileManagerImpl$BitmapArgs;->mHeight:I

    return v0
.end method
