// implement lazy loading so that an image in the gallery should be loaded once the image is 100px or less below the visible viewport


function ImageGallery({ images }) {

    let observer = new IntersectionObserver(
        (entries, observer) => { 
        entries.forEach(entry => {
            if(entry.isIntersecting){
              entry.target.src = entry.target.dataset.src;
              observer.unobserve(entry.target);
            }
          });
        });

    return (
        <div>
            {images.forEach(image => (
                <img
                    key={image.id}
                    data-src={image.url}
                    src={image.placeholder}
                    className="image"
                    ref={img => { if (img) observer.observe(img); }}
                    alt={image.alt}
                />  
                ))}
        </div>
    );
}

export default ImageGallery;
