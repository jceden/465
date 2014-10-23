dois = Doi.create(
	[
		{doi_num: 888},
		{doi_num: 989}
	]
)

urls = Url.create(
	[
		{address: 'www.youtube.com', comment: 'holds cat videos',doi_id: dois[0].id},
		{address: 'www.csuchico.edu', comment: 'holds students',doi_id: dois[1].id}
	]
)
