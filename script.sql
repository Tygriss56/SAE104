CREATE TABLE _parcours
(
code_P VARCHAR(50),
	libelle_parcours VARCHAR(50),
	nbre_gpe_TD_P INTEGER,
	nbre_gpe_TP_P INTEGER
CONSTRAINT _parcours_pk PRIMARY KEY (code_P)
);

CREATE TABLE _ressources
(
	code_R VARCHAR(50),
	lib_R VARCHAR(50),
	nb_h_CM_PN INTEGER,
	nb_h_TD_PN INTEGER,
	nb_h_TP_PN INTEGER
CONSTRAINT _ressources_pk PRIMARY KEY (code_R)
);







CREATE TABLE _est_enseignee
(
	code_R VARCHAR(50),
	code_P VARCHAR(50)
CONSTRAINT _est_enseignee_pk
	PRIMARY KEY (code_R, code_P)
CONSTRAINT _est_enseignee_fk1 FOREIGN KEY (code_R)
	REFERENCES _ressource(code_R)
CONSTRAINT _est_enseignee_fk2 FOREIGN KEY (code_P)
	REFERENCES _parcours(code_P)
);

CREATE TABLE _sae
(
	code_sae VARCHAR(50),
	lib_sae VARCHAR(50),
	nb_h_TD_enc INTEGER,
	nb_h_projet_autonomie INTEGER
CONSTRAINT _sae_pk
	PRIMARY KEY (code_sae)


CREATE TABLE _comprend_r
(
	code_r VARCHAR(50),
	code_sae VARCHAR(50),
	nb_h_td_c INTEGER,
	nb_h_tp_c INTEGER,
CONSTRAINT _comprend_r_pk
	PRIMARY KEY (code_e, code_sae),
CONSTRAINT _comprend_r_fk1 FOREIGN KEY (code_r)
	REFERENCES _ressource(code_R),
CONSTRAINT _comprend_r_fk2 FOREIGN KEY (code_sae)
	REFERCENCES _sae (code_sae)
);

 CREATE TABLE _semestre
(
	numero_sem VARCHAR(50)
	CONSTRAINT _semestre_pk
	PRIMARY KEY (numero_sem)
);






CREATE TABLE _competences
(
	lib_competences VARCHAR(50),
	CONSTRAINT _competences_pk
		PRIMARY KEY (lib_competences)
);


CREATE TABLE _activites(
	lib_activite VARCHAR(50),
	lib_competence : VARCHAR(50),
CONSTRAINT _activites_pk
	PRIMARY KEY (_lib-activite),
CONSTRAINT _activite_pk1_competences FOREIGN KEY (numero_sem)
	REFERENCES _competences(lib_competence)
);


CREATE TABLE _ue
(
	code_ue : VARCHAR (50),
	numero_sem : VARCHAR(50),
	lib_activite : VARCHAR(50),
CONSTRAINT _ue_pk
	PRIMARY KEY (code_ue),
CONSTRAINT _ue_fk1_semestre FOREIGN KEY (numero_sem)
	REFERENCES _semestre(numero_sem),
CONSTRAINT _ue_fk2_activites FOREIGN KEY (lib_activite)
	REFERENCES _activites(lib_activite)
);


CREATE TABLE _niveau
(
	numero_N INTEGER,
	numero_sem VARCHAR(50),
	CONSTRAINT _niveau_pk
		PRIMARY KEY (numero_N)
);

create TABLE _correspond 
(
	code_P  VARCHAR(50),
	numero_N INTEGER,
	lib_activite VARCHAR(50),
	CONSTRAINT _correspond_pk
		PRIMARY KEY (code_P,numero_N,lib_activite)
	CONSTRAINT _correspond_fk1 FOREIGN KEY (
);
