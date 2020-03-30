var chevrons, previews;

$(document).ready(function(){
    chevrons = $(".fa-chevron-down");
    previews = $(".previewContent");
    console.log(previews);
    console.log(previews[0]);
    for(var i=0; i<chevrons.length; i++)
	setChevronListener(i);
});

function setChevronListener(index){
    $(previews[index]).toggleClass("noShow");
    $(chevrons[index]).toggleClass("fa-chevron-down");
    $(chevrons[index]).toggleClass("fa-chevron-right");
    $(chevrons[index]).click(function(e){
	e.preventDefault();
	$(previews[index]).toggleClass("noShow");
	$(chevrons[index]).toggleClass("fa-chevron-down");
	$(chevrons[index]).toggleClass("fa-chevron-right");
    });
}
