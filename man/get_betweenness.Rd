% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_betweenness.R
\name{get_betweenness}
\alias{get_betweenness}
\title{Get betweenness centrality scores}
\usage{
get_betweenness(graph)
}
\arguments{
\item{graph}{a graph object of class \code{dgr_graph}.}
}
\value{
a data frame with betweenness scores for each of the nodes.
}
\description{
Get the betweenness centrality scores for all nodes in a graph.
}
\examples{
# Create a random graph using the
# `add_gnm_graph()` function
graph <-
  create_graph() \%>\%
  add_gnm_graph(
    n = 10,
    m = 12,
    set_seed = 23)

# Get the betweenness scores
# for nodes in the graph
graph \%>\% get_betweenness()

# Add the betweenness
# values to the graph
# as a node attribute
graph <-
  graph \%>\%
  join_node_attrs(
    df = get_betweenness(.))

# Display the graph's node
# data frame
graph \%>\% get_node_df()
}
